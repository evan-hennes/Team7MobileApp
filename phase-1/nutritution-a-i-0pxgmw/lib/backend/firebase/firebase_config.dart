import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxdClceRPjw4iC0tI4OvYpfu5BqpjcMLs",
            authDomain: "nutritution-a-i-0pxgmw.firebaseapp.com",
            projectId: "nutritution-a-i-0pxgmw",
            storageBucket: "nutritution-a-i-0pxgmw.firebasestorage.app",
            messagingSenderId: "914430193688",
            appId: "1:914430193688:web:37179327dcd62cc221d36d"));
  } else {
    await Firebase.initializeApp();
  }
}
