import 'package:flutter/material.dart';
import 'package:spotify/activity/musicAlbums.dart';
import 'package:spotify/activity/musicArtists.dart';
import 'package:spotify/activity/musicPlaylists.dart';

class music extends StatelessWidget {
  const music({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56.0),
            child: Material(
              color: Colors.black54,
              child: TabBar(
                tabs: [
                  Tab(
                    text: "Playlists",
                  ),
                  Tab(
                    text: "Artists",
                  ),
                  Tab(
                    text: "Albums",
                  ),
                ],
                labelColor: Colors.white,
               
                indicatorSize: (TabBarIndicatorSize.label),
                indicatorColor: Colors.white,
              ),
            ),
          ),
         body: TabBarView(
          children: [
            M_playlists(),
            M_Artists(),
            M_Albums()
         ]),
        )
        );
  }
}
