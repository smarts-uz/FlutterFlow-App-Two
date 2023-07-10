import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBaYLxhMhXU44YWvJjk1FPvzH9SmsSkwrs",
            authDomain: "flutterflow-supabase-app-two.firebaseapp.com",
            projectId: "flutterflow-supabase-app-two",
            storageBucket: "flutterflow-supabase-app-two.appspot.com",
            messagingSenderId: "522142112967",
            appId: "1:522142112967:web:6d9c220ff3eb5e483ef2e2"));
  } else {
    await Firebase.initializeApp();
  }
}
