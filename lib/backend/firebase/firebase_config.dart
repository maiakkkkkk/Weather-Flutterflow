import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA_QdSwvC8soaeZ7UTrjMDEcHhfCbZX75E",
            authDomain: "weathersync2.firebaseapp.com",
            projectId: "weathersync2",
            storageBucket: "weathersync2.appspot.com",
            messagingSenderId: "833783907132",
            appId: "1:833783907132:web:a8a1791878bc453d301439",
            measurementId: "G-JKJLPXXT0Y"));
  } else {
    await Firebase.initializeApp();
  }
}
