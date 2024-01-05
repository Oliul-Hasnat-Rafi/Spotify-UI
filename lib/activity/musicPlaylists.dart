import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class M_playlists extends StatelessWidget {
  const M_playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Myplaylist(imgname:'https://zirwabd.000webhostapp.com/imgflutter/img5.jpg' , songs: 'Liked Songs', totallikesong: '1546 songs'),
             Myplaylist(imgname:'https://zirwabd.000webhostapp.com/imgflutter/img6.jpg' , songs: 'Liked Songs', totallikesong: '546 songs'),
              Myplaylist(imgname:'https://zirwabd.000webhostapp.com/imgflutter/img7.jpg' , songs: 'Liked Songs', totallikesong: '156 songs'),
               Myplaylist(imgname:'https://zirwabd.000webhostapp.com/imgflutter/img8.jpg' , songs: 'Liked Songs', totallikesong: '1006 songs'),
                Myplaylist(imgname:'https://zirwabd.000webhostapp.com/imgflutter/img9.jpg' , songs: 'Liked Songs', totallikesong: '146 songs'),
          ],
        )
        );
  }
}

class Myplaylist extends StatelessWidget {
  String imgname, songs, totallikesong;
   Myplaylist({super.key, required this.imgname,required this.songs,required this.totallikesong});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.blueGrey.shade300,
        child: Row(
          children: [
            Image.network(
              imgname,
              height: 80,
              width: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    songs,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    totallikesong,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
