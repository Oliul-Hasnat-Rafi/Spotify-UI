import 'package:flutter/material.dart';
import 'package:spotify/activity/Deshbord.dart';


void main() async {
     runApp(MyApp());
}
        
class MyApp extends StatelessWidget {
   const MyApp();
        
  @override
  Widget build(BuildContext context) {
       return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Spotify ',
    home: Deshbord(), 
       );
  }
}
