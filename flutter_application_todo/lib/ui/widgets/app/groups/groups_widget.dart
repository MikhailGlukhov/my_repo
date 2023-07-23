


import 'package:flutter/material.dart';
import 'package:flutter_application_todo/ui/widgets/app/groups/groups_widget_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class GroupsWidget extends StatefulWidget {
  const GroupsWidget({super.key});

  @override
  State<GroupsWidget> createState() => _GroupsWidgetState();
}

class _GroupsWidgetState extends State<GroupsWidget> {
  final _model = GroupWidgetModel();
  @override
  Widget build(BuildContext context) {
     return GroupWidgetModelProvider(model:_model, child:const _GroupsWidgetBody(), );
  }
  @override
  void dispose()async{
    super.dispose();
   await _model.dispose();
    
  }
}

class _GroupsWidgetBody extends StatelessWidget {
  const _GroupsWidgetBody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: const Text('группы')
          ),
          ),
          body: const _GroupListWidget(),

            floatingActionButton: FloatingActionButton(onPressed:() =>GroupWidgetModelProvider.read(context)?.model.showForm(context),
            child: const Icon(Icons.add),),
          );
  }
}

class _GroupListWidget  extends StatelessWidget {
  const _GroupListWidget({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    final groupsCount = GroupWidgetModelProvider.watch(context)?.model.groups.length ?? 0;
    return ListView.separated(
      itemBuilder: ((context, index) {
         return  _GroupListRowWidget(indexInList: index,);
       
        
      }),
       separatorBuilder:((context, index) {
       
         return const Divider(height: 1,);
        
      }),
        itemCount: groupsCount);
  }
}


class _GroupListRowWidget extends StatelessWidget {
  final int indexInList;
  const _GroupListRowWidget({super.key, required this.indexInList});

 

  @override
  Widget build(BuildContext context) {
    

    final model =GroupWidgetModelProvider.read(context)!.model;
     final group = model.groups[indexInList];

     void gropDelete(BuildContext context) {
  model.deleteGroup(indexInList);
}
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
                  title:  Text(group.name),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: (){model.showTasks(context,  indexInList);},
                ),
      ),
    );
            
  }
}
