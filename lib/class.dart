import 'package:flutter/material.dart';


class ClassRooms extends StatefulWidget {
    @override
    _ClassRoomsState createState() => _ClassRoomsState();
}

class _ClassRoomsState extends State<ClassRooms> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text('Class room'),
            ),
        );
    }
}