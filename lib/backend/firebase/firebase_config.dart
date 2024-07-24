import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC53QqYSpKhxdu5tAuaZUKGkewQ-qC2Jh4",
            authDomain: "heladeria-coctelarte-6ctvmt.firebaseapp.com",
            projectId: "heladeria-coctelarte-6ctvmt",
            storageBucket: "heladeria-coctelarte-6ctvmt.appspot.com",
            messagingSenderId: "475320782759",
            appId: "1:475320782759:web:982ffd71160f84672d7082"));
  } else {
    await Firebase.initializeApp();
  }
}
