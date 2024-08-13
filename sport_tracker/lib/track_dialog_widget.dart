import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';
import 'package:sport_tracker/timer/timer_chose.dart';

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
          height: 10,
        ),
        const Center(child: Text('Rounds Time'),),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: timeRound.map((time){
            return Container(decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(5)),margin: const EdgeInsets.only(left: 15, right: 15),width: 50,height: 50,child:Center(child: Text(int.parse(time).toString()),),);
          }).toList(),),
        ),const SizedBox(height: 10,),
         const Center(child: Text('Rest Time'),),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: timeRest.map((time){
            return Container(decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(5)),margin: const EdgeInsets.only(left: 15, right: 15),width: 50,height: 50,child:Center(child: Text(int.parse(time).toString()),),);
          }).toList(),),
        ),const SizedBox(height: 10,),
         const Center(child: Text('Rounds'),),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: roundCount.map((time){
            return Container(decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(5)),margin: const EdgeInsets.only(left: 15, right: 15),width: 50,height: 50,child:Center(child: Text(int.parse(time).toString()),),);
          }).toList(),),
        ),const SizedBox(height: 10,),
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
