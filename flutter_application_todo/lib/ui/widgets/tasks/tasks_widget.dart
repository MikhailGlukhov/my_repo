import 'package:flutter/material.dart';
import 'package:flutter_application_todo/ui/widgets/tasks/tasks_widget_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TasksWidgetConfiguration {
  final   int groupKey;
  final String title;

  TasksWidgetConfiguration(this.groupKey, this.title);
}

class TasksWidget extends StatefulWidget {
  final TasksWidgetConfiguration configuration;
  const TasksWidget({super.key,  required this.configuration});

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
 late final TasksWidgetModel _model;

  @override
  void initState() {
   
    super.initState();
    _model = TasksWidgetModel(configuration:widget.configuration );
    
  }
 

      @override
  Widget build(BuildContext context) {
   

    return  TasksWidgetModelProvider(model: _model,
    child: const TasksWidgetBody(),);
  
  }
  @override
  void dispose()async{
    super.dispose();
   await _model.dispose();
    
  }
}
class TasksWidgetBody extends StatelessWidget {
  const TasksWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {   
   final model  = TasksWidgetModelProvider.watch(context)?.model;
   final title = model?.configuration.title ?? 'Задачи';
    
    return Scaffold(
      appBar: AppBar( title:  Text(title),),
      body: const _TaskListWidget(),
       floatingActionButton: FloatingActionButton(
        onPressed:() => model?.showForm(context),
            child: const Icon(Icons.add),),);
  }
}

class _TaskListWidget  extends StatelessWidget {
  const _TaskListWidget({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final groupsCount = TasksWidgetModelProvider.watch(context)?.model.tasks.length ?? 0;
    return ListView.separated(
      itemBuilder: ((context, index) {
         return  _TaskListRowWidget(indexInList: index,);
       
        
      }),
       separatorBuilder:((context, index) {
       
         return const Divider(height: 1,);
        
      }),
        itemCount: groupsCount);
  }
}


class _TaskListRowWidget extends StatelessWidget {
  final int indexInList;
  const _TaskListRowWidget({super.key, required this.indexInList});

 

  @override
  Widget build(BuildContext context) {
    

    final model =TasksWidgetModelProvider.read(context)!.model;
     final task = model.tasks[indexInList];

     void gropDelete(BuildContext context) {
  model.deleteTask(indexInList);
}
final icon = task.isDone ? Icons.done : null;
final style = task.isDone ? const TextStyle(decoration: TextDecoration.lineThrough) : null;
    return Slidable(
      endActionPane:  ActionPane(motion:  BehindMotion(), children: [
                 
                  SlidableAction(
                    onPressed: gropDelete,
        backgroundColor: Color(0xFFFE4A49),
        foregroundColor: Colors.white,
        icon: Icons.delete,
        label: 'Delete',
                    
                  ),
                 
                ],)
      ,
      child:  ColoredBox(color: Colors.white,
        child:  ListTile(
                  title:  Text(task.text, style: style),
                  trailing:  Icon(icon),
                  onTap: () => model.doneToggle(indexInList),
                ),
      ),
    );
            
  }
}