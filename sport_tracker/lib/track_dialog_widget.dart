import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';

class TrackDialogWidget extends StatefulWidget {
  const TrackDialogWidget({super.key});

  @override
  State<TrackDialogWidget> createState() => _TrackDialogWidgetState();
}

class _TrackDialogWidgetState extends State<TrackDialogWidget> {
  final _trackController = TextEditingController();

  @override
  void dispose() {
    _trackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        const Center(
            child: Text(
          'Add new exercise',
          style: TextStyle(fontSize: 18),
        )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            controller: _trackController,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  context
                      .read<FireStoreBloc>()
                      .add(FireStoreEvent.save(_trackController.text));
                  context.pop();
                },
                child: const Text('ADD')),
            ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Cancel')),
          ],
        ),
      ],
    );
  }
}
