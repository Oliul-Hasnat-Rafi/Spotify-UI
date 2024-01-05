import 'package:spotify/model/category.dart';

class category_opera {
  category_opera._() {}
  static List<category> getcategories() {
    return <category>[
      category('Local Legends',
          'https://images.squarespace-cdn.com/content/v1/55b814fee4b08482a66576b2/1631225875850-5JXZU89EK4C82KF3UQZA/local+legends+jay%3Ajose.jpg'),
      category('Wrokout\nPlaylist',
          'https://cdns-images.dzcdn.net/images/cover/82563f32d7e88e2eda54205787564349/264x264.jpg'),
      category('Stevie Wonder\nHits',
          'https://www.phono.cz/vimage/320x320/data/image/zbozi/stevie-wonder-greatest-hits10.jpg'),
      category('Sunday Jams',
          'https://zirwabd.000webhostapp.com/imgflutter/img1.jpg'),
      category('Morning \n Motivation',
          'https://zirwabd.000webhostapp.com/imgflutter/img4.jpg'),
      category('The Beatles',
          'https://zirwabd.000webhostapp.com/imgflutter/img3.jpg'),
    ];
  }
}
