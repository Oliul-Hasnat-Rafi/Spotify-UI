import 'package:flutter/material.dart';
import 'package:spotify/activity/home.dart';
import 'package:spotify/activity/library.dart';
import 'package:spotify/activity/search.dart';


class Deshbord extends StatefulWidget {
  const Deshbord({super.key});

  @override
  State<Deshbord> createState() => _DeshbordState();
}

class _DeshbordState extends State<Deshbord> {
  final Tabs = [home(), search(), mylibrary()];
  int currtab = 0; 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Tabs[currtab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currtab,
          onTap: (value) {
            setState(() {
              currtab = value;
            });
            
          },
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books, color: Colors.white),
                label: 'library'),
          ]),
    );
  }
}
//looking for a show to listen
//browse