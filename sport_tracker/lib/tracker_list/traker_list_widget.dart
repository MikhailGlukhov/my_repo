import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fireauth/fireauth.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';
import 'package:sport_tracker/firestore/firestore.dart';
import 'package:sport_tracker/gen/assets.gen.dart';
import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/models/sport_track.dart';
import 'package:sport_tracker/routes/routes_name.dart';
import 'package:sport_tracker/settings/cubit/settings_cubit.dart';
import 'package:sport_tracker/track_dialog_widget.dart';

class TrakerListWidget extends StatefulWidget {
  const TrakerListWidget({super.key});

  @override
  State<TrakerListWidget> createState() => _TrakerListWidgetState();
}

class _TrakerListWidgetState extends State<TrakerListWidget> {
  var textmessage = '';
  List<ConnectivityResult> _connectionStatus = [];
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
    switch (_connectionStatus) {
      case [ConnectivityResult.mobile]:
        textmessage = 'Your connection now is mobile'.tr();

        break;
      case [ConnectivityResult.wifi]:
        textmessage = 'Your connection now is wifi'.tr();
        break;
      case [ConnectivityResult.none]:
        textmessage = 'You are now is offline'.tr();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(textmessage),
          duration: const Duration(seconds: 2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
        ));
        break;
      case [ConnectivityResult.vpn]:
        textmessage = 'You are using vpn'.tr();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(textmessage),
          duration: const Duration(seconds: 2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
        ));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<SettingsCubit>().state.brightness;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              AuthRepository().signOut();
              context.read<SignInBloc>().add(const SigInEvent.logOut());
              context.pushReplacementNamed(RoutesName.enterScreenName);
            },
            icon: Image.asset(
              Assets.icons.exit.path,
              height: 40,
              width: 40,
            ),
          ),
          IconButton(
              onPressed: () {
                context.pushNamed(RoutesName.settingsScreenName);
              },
              icon: Image.asset(
                Assets.icons.settings.path,
                height: 40,
                width: 40,
              ))
        ],
        centerTitle: true,
        title: Text('Sport Tracker'.tr()),
      ),
      body: BlocBuilder<FireStoreBloc, FireStoreState>(
        builder: (context, state) {
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
                  cacheExtent: 1300,
                    itemCount: tracks.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: UniqueKey(),
                        onDismissed: (DismissDirection decoration) {
                          (context)
                              .read<FireStoreBloc>()
                              .add(FireStoreEvent.delete(tracks[index].uid));
                        },
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            height: 70,
                            decoration: BoxDecoration(
                                color: brightness == Brightness.dark
                                    ? const Color.fromARGB(82, 221, 165, 196)
                                    : const Color.fromARGB(82, 252, 234, 244),
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: const Color.fromARGB(82, 41, 14, 29),
                                  width: 2,
                                )),
                            child: ListTile(
                              title: Text(tracks[index].title),
                              trailing: SizedBox(
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
                                  Text(
                                      '${'Round'.tr()}: ${tracks[index].roundTime}${'sek'.tr()}'),
                                  Text(
                                      '${'Rest'.tr()} : ${tracks[index].restTime}${'sek'.tr()}'),
                                  Text(
                                      '${'Rounds'.tr()}: ${tracks[index].rounds}'),
                                ],
                              ),
                              onTap: () {
                                bool newCompletedTrack =
                                    !tracks[index].isCompleted;
                                (context).read<FireStoreBloc>().add(
                                    FireStoreEvent.update(
                                        tracks[index].uid, newCompletedTrack));
                              },
                            )),
                      );
                    });
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const TrackDialogWidget());
          },
          child: Image.asset(
            Assets.icons.muscle.path,
            height: 40,
            width: 40,
          )),
    );
  }
}
