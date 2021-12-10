import 'package:flutter/material.dart';
import 'package:frontend/hexmap_names.dart';
import 'hexmap.dart';
import 'hexmap_names.dart';
import 'board_pieces.dart';
import 'supply_centers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green), home: HexMap());
  }
}

class HexMap extends StatefulWidget {
  const HexMap({Key? key}) : super(key: key);
  @override
  HexMapState createState() => HexMapState();
}

class HexMapState extends State<HexMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HexMap Example')),
        body: Center(
          child: Stack(children: [HexmapBoard, HexmapNames, HexmapBoardPieces, HexmapSupplyCenters],)
          ),
    );
  }
}

