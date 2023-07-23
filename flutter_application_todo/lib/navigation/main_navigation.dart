

import 'package:flutter/material.dart';

import '../ui/widgets/app/groups/groups_widget.dart';
import '../ui/widgets/group_form/group_form_widget.dart';
import '../ui/widgets/task_form/task_form_widget.dart';
import '../ui/widgets/tasks/tasks_widget.dart';

abstract class MainNavigationRoutName {
static const groups = 'groups';
static const groupsForm = 'groups/form';
static const tasks = 'groups/tasks';
static const tasksForm = 'groups/tasks/form';
}

class MainNavigation {
  final initialRoute  = MainNavigationRoutName.groups;
  final routes = {
        MainNavigationRoutName.groups :(context) => const GroupsWidget(),
      MainNavigationRoutName.groupsForm :(context) => const GroupFormWidget(),
     
      
      };
      Route<Object> onGenerateRoute(RouteSettings settings) {
      switch (settings.name){
        case  MainNavigationRoutName.tasks:
        final configuration = settings.arguments as TasksWidgetConfiguration;
        return MaterialPageRoute(builder: (context) => TasksWidget(configuration: configuration));
        case  MainNavigationRoutName.tasksForm:
        final groupKey = settings.arguments as int;
        return MaterialPageRoute(builder: (context) => TaskFormWidget(groupKey: groupKey));
        default:
        const widget = Text('Navigation Error!!!');
         return MaterialPageRoute(builder: (context) => widget);
      }

      }

}