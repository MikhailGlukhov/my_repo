import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';
import 'package:sport_tracker/firestore/firestore.dart';

import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/models/sport_track.dart';
import 'package:sport_tracker/routes/routes_name.dart';
import 'package:sport_tracker/track_dialog_widget.dart';

class TrakerListWidget extends StatelessWidget {
  const TrakerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                AuthRepository().signOut();
                context.read<SignInBloc>().add(const SigInEvent.logOut());
                context.pushNamed(RoutesName.enterScreenName);
              },
              icon: const Icon(Icons.exit_to_app)),
          IconButton(
              onPressed: () {
                context.pushNamed(RoutesName.settingsScreenName);
              },
              icon: const Icon(Icons.settings))
        ],
        centerTitle: true,
        title: const Text('Sport Tracker'),
      ),
      body: BlocBuilder<FireStoreBloc, FireStoreState>(
        builder: (context, state) {
          if(state is FireStoreLoadingState){
            return const Center(child: CircularProgressIndicator(),);
          } else {
            return StreamBuilder<List<SportTrack>>(stream: FirestoreRepository().listSportTrack(), builder: (context, snapshot){
              List<SportTrack>? tracks = snapshot.data;
              if(tracks == null){
                return const Center(child: CircularProgressIndicator(),);
              }
              return ListView.builder(
              itemCount: tracks.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                            color: const Color.fromARGB(82, 0, 0, 0))),
                    child: ListTile(
                      title: Text(tracks[index].title),
                      trailing: Container(
                        height: 15,
                        width: 15,
                        child: Icon(Icons.check_box),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(tracks[index].title),
                          Text(tracks[index].title),
                          Text(tracks[index].title)
                        ],
                      ),
                      onTap: () {
                        context.pushNamed(RoutesName.timerScreenName);
                      },
                    ));
              }); 
            });
           /* final track = state.tracks;
            return ListView.builder(
              itemCount: track.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(10),
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                            color: const Color.fromARGB(82, 0, 0, 0))),
                    child: ListTile(
                      title: Text(track[index].title),
                      trailing: Container(
                        height: 15,
                        width: 15,
                        child: Icon(Icons.check_box),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(track[index].title),
                          Text(track[index].title),
                          Text(track[index].title)
                        ],
                      ),
                      onTap: () {
                        context.pushNamed(RoutesName.timerScreenName);
                      },
                    ));
              });*/
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const TrackDialogWidget());
          },
          child: const Icon(Icons.add)),
    );
  }
}
