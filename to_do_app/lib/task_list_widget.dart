import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app/login_screen.dart';

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({super.key});

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  /*List<String> task = [
    'Task 1',
    'Task 2',
    'Task 3',
    'Task 4',
    'Task 5',
    'Task 6',
    'Task 7',
    'Task 8',
    'Task 9',
    'Task 10',
    'Task 11',
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('To Do', style: appBarTextStyle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(index.toString()),
              onDismissed: (DismissDirection deirection) {
               
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: containerDecoration,
                  child: ListTile(
                      trailing: Container(
                        color: Colors.blueAccent,
                        height: 20,
                        width: 20,
                        child: const Icon(Icons.check),
                      ),
                      title:  Text(
                        'Task',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
