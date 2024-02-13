
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseServices{

  //create an instance of firebase

  final  _firebaseMessaging= FirebaseMessaging.instance;

  //function to initialize notification

 Future<void> initNotification() async{
   //request permission from the user..............
  await _firebaseMessaging.requestPermission();

   //fetch yhe FCM token for this device..

   final fCMToken = await _firebaseMessaging.getToken();
   
   //print the tolken
   print("token : $fCMToken");
   

 }

  //function to handle recieve message


  //function to initialize foreground and background settings



}