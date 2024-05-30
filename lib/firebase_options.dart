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
    apiKey: 'AIzaSyB3ysP2NYi_6yZKWUiYo8u-rlafi-dKTNM',
    appId: '1:588914281788:web:31e80e91fe7d86f7cd2239',
    messagingSenderId: '588914281788',
    projectId: 'find-my-shop-8ab27',
    authDomain: 'find-my-shop-8ab27.firebaseapp.com',
    storageBucket: 'find-my-shop-8ab27.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB158QSUNaBoXdjtkW6lMEP17G7OMvJ4xc',
    appId: '1:588914281788:android:23d9328f0b76123bcd2239',
    messagingSenderId: '588914281788',
    projectId: 'find-my-shop-8ab27',
    storageBucket: 'find-my-shop-8ab27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSic-Kux4BHuwzQlHd7z__vB59gdJUPXY',
    appId: '1:588914281788:ios:a21b0d1ad2edb5eecd2239',
    messagingSenderId: '588914281788',
    projectId: 'find-my-shop-8ab27',
    storageBucket: 'find-my-shop-8ab27.appspot.com',
    iosBundleId: 'com.findmyshop.findMyShop',
  );
}
