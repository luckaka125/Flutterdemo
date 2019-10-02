import 'package:flutter/material.dart';


class Gallery extends StatefulWidget {
    @override
    _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
            title: new Text('Gallery'),
            ),
            body: new Center(
                child: _buildGrid()
            )
        );
    }
   Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(9));

    List<Container> _buildGridTileList(int count) => List.generate(
        count, (i) => Container(child: Image.asset('assets/pic$i.jpg', fit: BoxFit.fill)));
}