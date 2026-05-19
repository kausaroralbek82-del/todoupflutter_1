import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD-rHJjIqMk__VOLO1HFbW9yIuDbGkhm9c',
    appId: '1:473039714274:android:d8e17d7bc7d29e1224abbb',
    messagingSenderId: '473039714274',
    projectId: 'todoapp-80ba1',
    authDomain: 'todoapp-80ba1.firebaseapp.com',
    storageBucket: 'todoapp-80ba1.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-rHJjIqMk__VOLO1HFbW9yIuDbGkhm9c',
    appId: '1:473039714274:android:d8e17d7bc7d29e1224abbb',
    messagingSenderId: '473039714274',
    projectId: 'todoapp-80ba1',
    storageBucket: 'todoapp-80ba1.firebasestorage.app',
  );
}
