import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';
import 'package:sport_tracker/firestore/firestore.dart';
import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/models/sport_track.dart';
import 'package:sport_tracker/routes/routes_name.dart';
import 'package:sport_tracker/track_dialog_widget.dart';


class TrakerListWidget extends StatefulWidget {
  const TrakerListWidget({super.key});

  @override
  State<TrakerListWidget> createState() => _TrakerListWidgetState();
}

class _TrakerListWidgetState extends State<TrakerListWidget> {
 List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
   
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }


  
  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
   
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e);
      return;
    }

    
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    setState(() {
      _connectionStatus = result;
    });
    
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Connectivity changed: $_connectionStatus'), duration: const Duration(seconds: 2),));
  }


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
        title: Text('Sport Tracker'.tr()),
      ),
      body: BlocBuilder<FireStoreBloc, FireStoreState>(
            builder: (context, state) {
              if (state is FireStoreLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return StreamBuilder<List<SportTrack>>(
                    stream: FirestoreRepository().listSportTrack(),
                    builder: (context, snapshot) {
                      List<SportTrack>? tracks = snapshot.data;
                      if (tracks == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                          itemCount: tracks.length,
                          itemBuilder: (context, index) {
                            return Dismissible(
                              key: UniqueKey(),
                              onDismissed: (DismissDirection decoration) {
                                (context).read<FireStoreBloc>().add(
                                    FireStoreEvent.delete(tracks[index].uid));
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              82, 0, 0, 0))),
                                  child: ListTile(
                                    title: Text(tracks[index].title),
                                    trailing: Container(
                                        height: 15,
                                        width: 15,
                                        child: tracks[index].isCompleted
                                            ? const Icon(Icons.check_box)
                                            : Container(
                                                height: 15,
                                                width: 15,
                                                color: Colors.black,
                                              )),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Round'.tr() +
                                            ': ${tracks[index].roundTime}' +
                                            'sek'.tr()),

                                        Text('Rest'.tr() +
                                            ' : ${tracks[index].restTime}' +
                                            'sek'.tr()),

                                        Text('Rounds'.tr() +
                                            ': ${tracks[index].rounds}'),

                                        //Text('Rest time: 30')
                                      ],
                                    ),
                                    onTap: () {
                                      bool newCompletedTrack =
                                          !tracks[index].isCompleted;
                                      (context).read<FireStoreBloc>().add(
                                          FireStoreEvent.update(
                                              tracks[index].uid,
                                              newCompletedTrack));
                                    },
                                  )),
                            );
                          });
                    });
              }
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
