import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/login_screen.dart';
import 'package:to_do_app/to_do_dialog_widget.dart';
import 'package:to_do_app/model/task_model.dart';

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({super.key});

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('To Do', style: appBarTextStyle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Consumer<AddTask>(
        builder: (context, task, Widget? child) {
          return ListView.builder(
              itemCount: task.tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(task.tasks.toString()),
                  onDismissed: (DismissDirection deirection) {
                    context.read<AddTask>().deleteTask(task.tasks[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: containerDecoration,
                      child: ListTile(
                          onTap: () {
                            context.read<AddTask>().checkTask(index);
                          },
                          trailing: Container(
                            color: Colors.blueAccent,
                            height: 20,
                            width: 20,
                            child: task.tasks[index].isComplete
                                ? const Icon(Icons.check)
                                : Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.blueAccent,
                                  ),
                          ),
                          title: Text(
                            task.tasks[index].title,
                            style: TextStyle(
                              fontSize: 20,
                              decoration: task.tasks[index].isComplete
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          )),
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange.shade300,
        onPressed: () {
          showDialog(
              context: context, builder: (context) => const ToDoDialogWidget());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
