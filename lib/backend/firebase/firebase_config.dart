import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD9SSspF1rC4sjzvAhyogXZJ-rupmu_UoM",
            authDomain: "grocery-list-app-c6c4b.firebaseapp.com",
            projectId: "grocery-list-app-c6c4b",
            storageBucket: "grocery-list-app-c6c4b.appspot.com",
            messagingSenderId: "498421066058",
            appId: "1:498421066058:web:f9ccb4c92188a08d1a39b3",
            measurementId: "G-F5LT6XR3W9"));
  } else {
    await Firebase.initializeApp();
  }
}
