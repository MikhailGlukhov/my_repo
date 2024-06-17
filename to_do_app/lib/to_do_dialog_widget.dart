import 'package:flutter/material.dart';

class ToDoDialogWidget extends StatelessWidget {
  const ToDoDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(backgroundColor: Colors.amber.shade100,
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
        TextFormField(maxLines: 3,
          decoration: const InputDecoration(
              hintText: 'Add your new task',
              hintStyle: TextStyle(fontSize: 18, color: Colors.grey)),
        ),const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){}, child: const Text('Add',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),))
      ],
    );
  }
}
