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
    apiKey: 'AIzaSyB-ZJjustkzn0u0hUt_H96FIb4GcC2cxPw',
    appId: '1:782036664664:web:90175c0cd83307bb1d652d',
    messagingSenderId: '782036664664',
    projectId: 'welcome-to-soda',
    authDomain: 'welcome-to-soda.firebaseapp.com',
    storageBucket: 'welcome-to-soda.appspot.com',
    measurementId: 'G-8VYNDDRK7T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEUL8iHbKHRCsqyJYWN2ptNiaAQf-dd2s',
    appId: '1:782036664664:android:a608a9211dfe9abb1d652d',
    messagingSenderId: '782036664664',
    projectId: 'welcome-to-soda',
    storageBucket: 'welcome-to-soda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjmyHiQ_K7tCQqZjWVq-mRQXNvJ0uOiBs',
    appId: '1:782036664664:ios:89680d81dd02a5111d652d',
    messagingSenderId: '782036664664',
    projectId: 'welcome-to-soda',
    storageBucket: 'welcome-to-soda.appspot.com',
    iosClientId: '782036664664-kph0gqqt6q5qpgs511pqq85ri2rpfoao.apps.googleusercontent.com',
    iosBundleId: 'com.example.welcomeToSoda',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDjmyHiQ_K7tCQqZjWVq-mRQXNvJ0uOiBs',
    appId: '1:782036664664:ios:89680d81dd02a5111d652d',
    messagingSenderId: '782036664664',
    projectId: 'welcome-to-soda',
    storageBucket: 'welcome-to-soda.appspot.com',
    iosClientId: '782036664664-kph0gqqt6q5qpgs511pqq85ri2rpfoao.apps.googleusercontent.com',
    iosBundleId: 'com.example.welcomeToSoda',
  );
}
