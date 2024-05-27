import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCZIo-S62rOjaSN42bbM7f-hon4l7Iz56U",
            authDomain: "alpha-md-design-jr2t6t.firebaseapp.com",
            projectId: "alpha-md-design-jr2t6t",
            storageBucket: "alpha-md-design-jr2t6t.appspot.com",
            messagingSenderId: "922286526975",
            appId: "1:922286526975:web:acca790a3f9af0b42917ca"));
  } else {
    await Firebase.initializeApp();
  }
}
