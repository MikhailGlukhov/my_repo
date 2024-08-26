import 'package:flutter/material.dart';

class NewCarDialog extends StatelessWidget {
  const NewCarDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return  SimpleDialog(backgroundColor: const Color.fromARGB(255, 228, 188, 215),
      title: const Text('Add new car'),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),contentPadding: const EdgeInsets.all(12),
      children: [
         const TextField(
          decoration: InputDecoration(hintText: ('Model')),
        ),
        const TextField(
          decoration: InputDecoration(hintText: ('Mark')),
        ),
        const TextField(
          decoration: InputDecoration(hintText: ('Year')),
        ), TextButton(onPressed: (){ Navigator.of(context).pop();}, child: const Text('Close')),
        TextButton(onPressed: (){ Navigator.of(context).pop();}, child: const Text('Save'))
      ],
      
    );
  }
}
