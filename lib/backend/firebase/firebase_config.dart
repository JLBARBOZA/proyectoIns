import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAjh4kaAOr0OcNzZzAIZ3iIdCKcX-Er4dw",
            authDomain: "insbd-57930.firebaseapp.com",
            projectId: "insbd-57930",
            storageBucket: "insbd-57930.appspot.com",
            messagingSenderId: "581370590070",
            appId: "1:581370590070:web:6bb6ba1e6c83416513c057",
            measurementId: "G-Z5FW8GB032"));
  } else {
    await Firebase.initializeApp();
  }
}
