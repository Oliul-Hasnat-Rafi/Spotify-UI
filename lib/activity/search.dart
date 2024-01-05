import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  static final List<Color> cardcolors = [
    Color(0xffF19821),
    Color(0xff99BACB),
    Color(0xff498D7C),
    Color(0xff4E97F2),
    Color(0xffEFB958),
    Color(0xffB196C4),
    Color(0xffF49824),
    Color(0xffF95F35),
  ];
  final List<String> topGenres = ['Rock', 'Pop', 'Hip-Hop', 'Indie'];
  final List<String> browseAll = [
    'Podcasts',
    'New Releases',
    'Charts',
    'Mood',
    'Workout',
    'Decades',
    'Country',
    'Focus'
  ];
  search({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            searchappbar(),
            search_(),
            SizedBox(
              height: 10,
            ),
            playlist(),
            SizedBox(
              height: 10,
            ),
            browseAlllist()
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueGrey.shade300,
            Colors.black,
            Colors.black,
            Colors.black,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
      ),
    );
  }

  Widget search_() {
    return Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Expanded(
                child: CupertinoTextField(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              placeholder: 'Artists, Songs or Podcasts',
              placeholderStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
              prefix: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.search,
                  color: Color(0xff7b7b7b),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                  borderRadius: BorderRadius.circular(10)),
              style: TextStyle(color: Color(0xff707070), fontSize: 12),
            )),
          ],
        ),
      ),
    );
  }

  Widget playlist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text('Playlist Added',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topGenres.length,
              itemBuilder: (context, index) {
                return playlistview(
                    title: topGenres[index], colors: cardcolors[index]);
              },
            ),
          ),
        )
      ],
    );
  }

  Widget browseAlllist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text('Browse All',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: browseAll.length,
              itemBuilder: (context, index) {
                return playlistview(
                    title: browseAll[index], colors: cardcolors[index]);
              },
            ),
          ),
        )
      ],
    );
  }
}

Widget searchappbar() {
  return AppBar(
    title: Text(
      'Search',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.transparent,
  );
}

class playlistview extends StatelessWidget {
  String title;
  Color colors;

  playlistview({super.key, required this.title, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: Card(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        color: colors,
      ),
    );
  }
}

class browseAllview extends StatelessWidget {
  String name;
  Color bcolors;
  browseAllview({super.key, required this.name, required this.bcolors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: Card(
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        color: bcolors,
      ),
    );
  }
}
