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
    apiKey: 'AIzaSyAjgsWDBB87yda79f_eLtc3Zht_i3PuNac',
    appId: '1:236478353402:web:018bdbaab13846d846de43',
    messagingSenderId: '236478353402',
    projectId: 'chat-app-e6825',
    authDomain: 'chat-app-e6825.firebaseapp.com',
    databaseURL: 'https://chat-app-e6825-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chat-app-e6825.appspot.com',
    measurementId: 'G-YCL4VE0SR3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcDDp3GQ8Q4MXkTpOoJ15YVROduUge6pA',
    appId: '1:236478353402:android:9945c3e24449706e46de43',
    messagingSenderId: '236478353402',
    projectId: 'chat-app-e6825',
    databaseURL: 'https://chat-app-e6825-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chat-app-e6825.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXU2FApNBVEAQRFceupGf1QVqCxvHuiok',
    appId: '1:236478353402:ios:a91c74d8ec6d52f246de43',
    messagingSenderId: '236478353402',
    projectId: 'chat-app-e6825',
    databaseURL: 'https://chat-app-e6825-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chat-app-e6825.appspot.com',
    androidClientId: '236478353402-h4i2ltm2eu4g9gu3rhujvompd6qefftc.apps.googleusercontent.com',
    iosClientId: '236478353402-srhvjhl1g9lg4dija3rf2te55gaqto2m.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXU2FApNBVEAQRFceupGf1QVqCxvHuiok',
    appId: '1:236478353402:ios:a5674a0a65a45fd746de43',
    messagingSenderId: '236478353402',
    projectId: 'chat-app-e6825',
    databaseURL: 'https://chat-app-e6825-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'chat-app-e6825.appspot.com',
    androidClientId: '236478353402-h4i2ltm2eu4g9gu3rhujvompd6qefftc.apps.googleusercontent.com',
    iosClientId: '236478353402-k33c242q76ogg002mg3u5gvfremmq4ue.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
