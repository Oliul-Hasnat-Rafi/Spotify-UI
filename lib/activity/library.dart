import 'package:flutter/material.dart';
import 'package:spotify/activity/music.dart';
import 'package:spotify/activity/podcasts.dart';

class mylibrary extends StatelessWidget {
  const mylibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        backgroundColor: Colors.black38,
        appBar: new AppBar(
          title: Text(
            'Library',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          bottom: new PreferredSize(
            preferredSize: new Size(60, 60),
            child: new Container(
              width: 400.0,
              child: new TabBar(
                tabs: [
                  new Container(
                    height: 50,
                    width: 100,
                    child: new Tab(
                      child: Text(
                        'Music',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  new Container(
                    height: 50,
                    width: 120,
                    child: new Tab(
                      child: Text(
                        'Podcasts',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
                indicatorSize: (TabBarIndicatorSize.label),
                indicatorColor: Colors.white,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            music(),
            podcasts(),
          ],
        ),
      ),
    );
  }
}
