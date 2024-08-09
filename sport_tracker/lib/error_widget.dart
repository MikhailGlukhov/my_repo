
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorDialogWidget extends StatelessWidget {
  final String error;
  const ErrorDialogWidget({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SimpleDialog(
          children: [
            Center(child: Text(error)),
            ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('OK'))
          ],
        ),
      ),
    );
  }
}
