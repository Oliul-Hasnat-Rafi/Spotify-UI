import 'package:flutter/material.dart';

class podcasts extends StatelessWidget {
  const podcasts({super.key});

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
         
        )
        );
  }
}
