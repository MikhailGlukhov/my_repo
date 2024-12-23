import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:to_do_app/provider/task_provider.dart';

class ToDoDialogWidget extends StatefulWidget {
  const ToDoDialogWidget({super.key});

  @override
  State<ToDoDialogWidget> createState() => _ToDoDialogWidgetState();
}

class _ToDoDialogWidgetState extends State<ToDoDialogWidget> {
   final taskController = TextEditingController();

   @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   
    return SimpleDialog(
      backgroundColor: Colors.amber.shade100,
      contentPadding: const EdgeInsets.all(20),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Add Task'),
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.cancel))
        ],
      ),
      children: [
        TextFormField(autofocus: true,
          textInputAction: TextInputAction.done,
          controller: taskController,
          decoration: const InputDecoration(
              hintText: 'Add your new task',
              hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              context.read<AddTask>().saveTask(
                  taskController.text);
              taskController.clear();
              Navigator.of(context).pop();
            },
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
