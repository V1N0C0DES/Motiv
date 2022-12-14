// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyBDHvpBbI2keR_nvj81A0m-KAJvjj9pVp4',
    appId: '1:649869804849:web:e45590858bd1f6735f9c10',
    messagingSenderId: '649869804849',
    projectId: 'motiv-c5ee1',
    authDomain: 'motiv-c5ee1.firebaseapp.com',
    storageBucket: 'motiv-c5ee1.appspot.com',
    measurementId: 'G-8N0L5TBCEK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAD8KBuaCYHd7c-NeiifJJtElhZPPUTzYo',
    appId: '1:649869804849:android:77d4e2cbf95ae8f95f9c10',
    messagingSenderId: '649869804849',
    projectId: 'motiv-c5ee1',
    storageBucket: 'motiv-c5ee1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAVbZKyYqMRCA0xnstYZYY9unzcqUDBB0',
    appId: '1:649869804849:ios:0415aeceb7196bf45f9c10',
    messagingSenderId: '649869804849',
    projectId: 'motiv-c5ee1',
    storageBucket: 'motiv-c5ee1.appspot.com',
    iosClientId: '649869804849-2ttqpb9sl0956ua5vq6ore19rq4bet2g.apps.googleusercontent.com',
    iosBundleId: 'com.example.motiv',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAVbZKyYqMRCA0xnstYZYY9unzcqUDBB0',
    appId: '1:649869804849:ios:0415aeceb7196bf45f9c10',
    messagingSenderId: '649869804849',
    projectId: 'motiv-c5ee1',
    storageBucket: 'motiv-c5ee1.appspot.com',
    iosClientId: '649869804849-2ttqpb9sl0956ua5vq6ore19rq4bet2g.apps.googleusercontent.com',
    iosBundleId: 'com.example.motiv',
  );
}
