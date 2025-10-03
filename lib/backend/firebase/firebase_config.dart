import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCj-e661hNFWo1uan371luubM407iROABY",
            authDomain: "portinhas-ko5klh.firebaseapp.com",
            projectId: "portinhas-ko5klh",
            storageBucket: "portinhas-ko5klh.firebasestorage.app",
            messagingSenderId: "906085597557",
            appId: "1:906085597557:web:a9077cb9a5fe659eb5d33c"));
  } else {
    await Firebase.initializeApp();
  }
}
