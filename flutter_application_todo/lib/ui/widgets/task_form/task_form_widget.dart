import 'package:flutter/material.dart';
import 'package:flutter_application_todo/ui/widgets/task_form/task_form_widget_model.dart';



class TaskFormWidget extends StatefulWidget {
   final int groupKey;
  const TaskFormWidget({super.key, required this.groupKey});

  @override
  State<TaskFormWidget> createState() => _TaskFormWidgetState();
}

class _TaskFormWidgetState extends State<TaskFormWidget> {
 late final TaskFormWidgetModel _model;

  @override
  void initState() {
    
    super.initState();
    _model = TaskFormWidgetModel(groupKey: widget.groupKey);
  }

   
  @override
  Widget build(BuildContext context) {
    return TaskFormWidgetModelProvider(model: _model,
     child: const _TextFormWidgetBody());
  }
}
class _TextFormWidgetBody extends StatelessWidget {
  const _TextFormWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    final model = TaskFormWidgetModelProvider.watch(context)?.model;
    final actionButton = FloatingActionButton(
      onPressed: ()=> model?.saveTask(context),
    child: const Icon(Icons.done),);
   return  Scaffold( appBar: AppBar(
      title:const Center(child: Text('Новая задача')),
    ),
    body: Center(
      child:  Container(
        child: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child:  _TaskTextWidget(),
        ),
        ),
    ),
    floatingActionButton: model?.isValid == true ? actionButton : null,
    );
  }
}
class _TaskTextWidget extends StatelessWidget {
  const _TaskTextWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    final model =TaskFormWidgetModelProvider.read(context)?.model;
    return  TextField(
      autofocus: true,
      maxLines: null,
      minLines: null,
      expands: true,
      decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'текст задачи'),
      onEditingComplete: ()=> model?.saveTask(context),
      onChanged: (value)=> model?.taskText=value,
      );
  }
}