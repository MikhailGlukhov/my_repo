// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqZgKSVrPYjRVup2wZUcvF6BVjtXiAb60',
    appId: '1:849883475653:web:9d0b3b422c069803844aac',
    messagingSenderId: '849883475653',
    projectId: 'my-todo-project-36',
    authDomain: 'my-todo-project-36.firebaseapp.com',
    storageBucket: 'my-todo-project-36.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcobchBT8bI-j8hugwrQUGrdVlTHB-7PE',
    appId: '1:849883475653:android:c274c2a51a0e0830844aac',
    messagingSenderId: '849883475653',
    projectId: 'my-todo-project-36',
    storageBucket: 'my-todo-project-36.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVY5JhbBcVGfy67b7QRVy6a83_uxmR5IQ',
    appId: '1:849883475653:ios:936339a4db7f44cd844aac',
    messagingSenderId: '849883475653',
    projectId: 'my-todo-project-36',
    storageBucket: 'my-todo-project-36.appspot.com',
    iosBundleId: 'com.example.toDoApp',
  );
}