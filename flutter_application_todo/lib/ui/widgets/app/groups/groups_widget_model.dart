import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_todo/domain/data_provider/box_manager.dart';
import 'package:flutter_application_todo/domain/entity/group.dart';
import 'package:flutter_application_todo/navigation/main_navigation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../../tasks/tasks_widget.dart';



class GroupWidgetModel extends ChangeNotifier{
    late final Future<Box<Group>> _box;
    ValueListenable<Object>? _listenableBox;

 var _groups = <Group>[];

 List<Group> get groups => _groups.toList();

GroupWidgetModel(){
  _setup();
}

   void showForm(BuildContext context){
    Navigator.of(context).pushNamed(MainNavigationRoutName.groupsForm);}

    Future<void> showTasks(BuildContext context, int groupIndex) async{
    
    final group = (await _box).getAt(groupIndex);
    if(group != null) {
        final configuration = TasksWidgetConfiguration(group.key, group.name);
    unawaited(Navigator.of(context).pushNamed(MainNavigationRoutName.tasks,arguments: configuration));
    }
    
 
    }

    Future<void> deleteGroup(int groupIndex) async{
      
   
    final box = await _box;
     final groupKey = (await _box).keyAt(groupIndex);
    final taskBoxName = BoxManager.instance.makeTaskBoxName(groupKey);
    await Hive.deleteBoxFromDisk(taskBoxName);  
    await box.deleteAt(groupIndex);
    }

    Future<void> _readGroupsFromHive() async{
      _groups = (await _box).values.toList();
    notifyListeners();

    }

  void _setup() async {
    
  
    _box = BoxManager.instance.openGroupBox();
    
    
    await _readGroupsFromHive();
    _listenableBox = (await _box).listenable();
    
    _listenableBox?.addListener(() => _readGroupsFromHive());
  }

@override
   Future<void> dispose() async {
    super.dispose();
    _listenableBox?.removeListener(() => _readGroupsFromHive());
   await BoxManager.instance.closeBox((await _box));
    
  }

}


class GroupWidgetModelProvider extends InheritedNotifier {
  final GroupWidgetModel model;
 
  const GroupWidgetModelProvider(    {
    Key? key,
   
    required Widget child, required this.model,
    
  }) : super(
          key: key,
          child: child,
          notifier: model
        );

  static GroupWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GroupWidgetModelProvider>();
  }

  static GroupWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GroupWidgetModelProvider>()
        ?.widget;
    return widget is GroupWidgetModelProvider ? widget : null;
  }
  
 
}