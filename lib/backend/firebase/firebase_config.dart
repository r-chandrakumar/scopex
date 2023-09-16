import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBNAMpuldDBYwxWuSY8il6LG21Cm34nqw",
            authDomain: "scopex-007.firebaseapp.com",
            projectId: "scopex-007",
            storageBucket: "scopex-007.appspot.com",
            messagingSenderId: "328756504418",
            appId: "1:328756504418:web:285a0f5f226e043ebe6e3b",
            measurementId: "G-FCTZT1V4E3"));
  } else {
    await Firebase.initializeApp();
  }
}
