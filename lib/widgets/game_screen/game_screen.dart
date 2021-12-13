import 'package:flutter/material.dart';
import 'package:frontend/styling/theme.dart';
import 'package:frontend/widgets/game_screen/map/hexmap.dart';
import 'package:frontend/widgets/game_screen/map/hexmap_names.dart';
import 'package:frontend/widgets/game_screen/map/board_pieces.dart';
import 'package:frontend/widgets/game_screen/map/supply_centers.dart';

//When merging branches make sure that the class name stays consistent with the one referenced in
// main. The entire AppBar widget below should be implemented for navigation to work.

class gameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          'D',
          style: CustomTheme.defaultTheme.appBarTheme.toolbarTextStyle,
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/pics/MicrosoftTeams-image.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Diplomacy',
          style: CustomTheme.defaultTheme.appBarTheme.titleTextStyle,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: CustomTheme.defaultTheme.textTheme.bodyText1,
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/chatScreenRoute');
            },
            child: const Text('Chat'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: CustomTheme.defaultTheme.textTheme.bodyText1,
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/menuRoute');
            },
            child: const Text('Exit'),
          ),
        ],
      ),
      body: Center(
          child: Stack(
        children: [
          HexmapBoard,
          HexmapNames,
          HexmapBoardPieces,
          HexmapSupplyCenters
        ],
      )),
    );
  }
}
