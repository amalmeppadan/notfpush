import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notfpush/firebase_options.dart';
import 'package:notfpush/pages/home_page.dart';
import 'package:notfpush/services/firebase_services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseServices().initNotification();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
