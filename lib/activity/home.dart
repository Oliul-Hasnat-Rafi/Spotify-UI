import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotify/model/category.dart';
import 'package:spotify/model/music.dart';
import 'package:spotify/services/category_opera.dart';
import 'package:spotify/services/music_opera.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: SafeArea(
        child: Column(
          children: [
            createappbar('Good Morning'),
            SizedBox(height: 5),
            createGrid(),
            SizedBox(height: 7),
            createmusiclist(),
            createmusiclist(),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue.shade300,
          Colors.black12,
          Colors.black12,
          Colors.black12,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
    ));
  }

  Widget createappbar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(message),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.timer_outlined, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.white),
          onPressed: () {},
        ), //IconButton
        //
      ],
    );
  }

  Widget createcategory(category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageulr, fit: BoxFit.cover),
          SizedBox(width: 10),
          Text(
            category.name,
            style: TextStyle(
              color: Colors.white,
            ),
            maxLines: 2,
          )
        ],
      ),
    );
  }

  List<Widget> createlistofcategories() {
    List<category> categorilist = category_opera.getcategories();
    List<Widget> categories = categorilist
        .map((category category) => createcategory(category))
        .toList();
    return categories;
  }

  Widget createGrid() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 250,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: createlistofcategories(),
      ),
    );
  }

  Widget createmusic(music music) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.network(
              music.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              music.name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(music.desc, style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  List<Widget> createlistofmusic() {
    List<music> musiclist = music_opera.getmusic();
    List<Widget> musics =
        musiclist.map((music music) => createmusic(music)).toList();
    return musics;
  }

  Widget createmusiclist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 15),
          child: Text('Popular Albums',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 270,
          child: ListView(
              scrollDirection: Axis.horizontal, children: createlistofmusic()),
        ),
      ],
    );
  }
}
