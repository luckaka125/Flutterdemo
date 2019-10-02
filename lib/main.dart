import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'dart:async';
import './class.dart';
import './gallery.dart';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new SplashScreenPage(),
      routes: <String, WidgetBuilder>{
        '/gallery': (BuildContext context) => new Gallery(),
      },
    );
  }
}
// First screen --- Splash Screen Page


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text('Welcome to One on one English'),
            backgroundColor: Colors.cyan,
            // bottom: PreferredSize(
            //     child: Image.asset('assets/logo.png',
            //         width: 100,      
            //         height: 55,
            //     ),
            // ),
        ),
        drawer: new Drawer(
            child: ListView(
                children: <Widget>[
                    new UserAccountsDrawerHeader(
                        accountName: new Text('Luc Hoang'),
                        decoration: BoxDecoration( color: const Color(0xFF009688)),
                        currentAccountPicture: CircleAvatar(
                            backgroundImage: NetworkImage('https://garden.zendesk.com/css-components/avatars/images/ma.png'),
                            backgroundColor: Colors.cyan,
                        ),
                    ),
                    new ListTile(
                        title: new Text('Class room'),
                        onTap: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (BuildContext context) => new ClassRooms())
                            );
                        },
                    ),
                    new ListTile(
                        title: new Text('Gallery'),
                        onTap: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (BuildContext context) => new Gallery())
                            );
                        },
                    ),
                ],
            ),
        ),
        // body: new Center(
        //     child: new FlatButton(
        //     child: Image.asset('assets/logo.png',
        //             width: 200,      
        //             height: 100,
        //         ),
        //         onPressed: () => Navigator.of(context).pushNamed('/gallery')
        //     )
        // ),
         body: new GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
                Card(
                     child: InkWell(
                        onTap: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (BuildContext context) => new Gallery())
                            );
                        },
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                Icon(
                                    Icons.camera,
                                    color: Colors.pink,
                                    size: 65,
                                ),
                                Center(
                                    child: Text(
                                'Gallery',
                                style: new TextStyle(fontSize: 14.0)
                                ),
                                ),
                            ],
                        )
                    ),
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.access_alarm,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                                'Schedule',
                                style: new TextStyle(fontSize: 14.0)
                                ),
                            ),
                        ],
                    )
                    
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Favorite Teacher',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.person_add,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Add students',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.location_on,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Location',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.mood,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Feedbacks',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.school,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Students',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),
                Card(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Icon(
                                Icons.play_circle_outline,
                                color: Colors.pink,
                                size: 65,
                            ),
                            Center(
                                child: Text(
                            'Record',
                            style: new TextStyle(fontSize: 14.0)
                            ),
                            ),
                        ],
                    )
                ),

            ],
        ),
    );
  }
}

// class Gallery extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//         return new Scaffold(
//             appBar: new AppBar(
//             title: new Text('Gallery'),
//             ),
//             body: new Center(
//                 child: _buildGrid()
//             )
//         );
//     }
//    Widget _buildGrid() => GridView.extent(
//         maxCrossAxisExtent: 150,
//         padding: const EdgeInsets.all(4),
//         mainAxisSpacing: 4,
//         crossAxisSpacing: 4,
//         children: _buildGridTileList(6));

//     List<Container> _buildGridTileList(int count) => List.generate(
//         count, (i) => Container(child: Image.asset('assets/images/pic$i.jpg')));
// }