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
    apiKey: 'AIzaSyCj-D2qQ989MuuD7flHejao6HEaV4P9XEQ',
    appId: '1:739240414638:web:cebd39a938a769e6f9cc3f',
    messagingSenderId: '739240414638',
    projectId: 'mapcommerce-b4330',
    authDomain: 'mapcommerce-b4330.firebaseapp.com',
    storageBucket: 'mapcommerce-b4330.appspot.com',
    measurementId: 'G-EXS9WDKL2R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0c7ua9vrg6qn-5zo1iveeJ9bRwnB08NA',
    appId: '1:739240414638:android:4988bfc8dc0d2476f9cc3f',
    messagingSenderId: '739240414638',
    projectId: 'mapcommerce-b4330',
    storageBucket: 'mapcommerce-b4330.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_3HaLUfxC3wrlZhyv2aae7vHkcgrl_os',
    appId: '1:739240414638:ios:5161f6dfbf009aa8f9cc3f',
    messagingSenderId: '739240414638',
    projectId: 'mapcommerce-b4330',
    storageBucket: 'mapcommerce-b4330.appspot.com',
    iosBundleId: 'com.appcommerce.appcommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_3HaLUfxC3wrlZhyv2aae7vHkcgrl_os',
    appId: '1:739240414638:ios:352100054f9f642df9cc3f',
    messagingSenderId: '739240414638',
    projectId: 'mapcommerce-b4330',
    storageBucket: 'mapcommerce-b4330.appspot.com',
    iosBundleId: 'com.appcommerce.appcommerce.RunnerTests',
  );
}
