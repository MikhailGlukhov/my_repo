import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sport_tracker/enter_screen.dart';
import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,  snapshot) {
        if(snapshot.data == null){
          return const EnterScreen();
        }
        final user =snapshot.data!;
        user.reload();
        if(user.emailVerified){
          return const TrakerListWidget();
        }
         else {
          return  const EnterScreen();
        }
      
      },
    );
  }
}
