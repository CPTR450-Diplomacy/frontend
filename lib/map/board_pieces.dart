// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'province_svgs.dart';

Widget HexmapBoardPieces = Container(
    child: SizedBox(
        height: 660.0,
        width: 464.0,
        child: CustomMultiChildLayout(delegate: BoardPieceDelegate(), children: [
          LayoutId(
            id: 1,
            child: Image.asset(
              'fleet.png',
              color: Colors.purple,
            ),
          ),
          LayoutId(
            id: 2,
            child: Image.asset(
              'fleet.png',
              color: Colors.purple,
            ),
          ),
          LayoutId(
            id: 3,
            child: Image.asset(
              'army.png',
              color: Colors.purple,
            ),
          ),
          LayoutId(
            id: 4,
            child: Image.asset(
              'army.png',
              color: Colors.purple,
            ),
          ),
          LayoutId(
            id: 5,
            child: Image.asset(
              'army.png',
              color: Colors.indigo,
            ),
          ),
          LayoutId(
            id: 6,
            child: Image.asset(
              'fleet.png',
              color: Colors.indigo,
            ),
          ),
          LayoutId(
            id: 7,
            child: Image.asset(
              'fleet.png',
              color: Colors.indigo,
            ),
          ),
          LayoutId(
            id: 8,
            child: Image.asset(
              'fleet.png',
              color: Colors.orange[400],
            ),
          ),
          LayoutId(
            id: 9,
            child: Image.asset(
              'army.png',
              color: Colors.orange[400],
            ),
          ),
          LayoutId(
            id: 10,
            child: Image.asset(
              'army.png',
              color: Colors.orange[400],
            ),
          ),
          LayoutId(
            id: 11,
            child: Image.asset(
              'fleet.png',
              color: Colors.blue[400],
            ),
          ),
          LayoutId(
            id: 12,
            child: Image.asset(
              'army.png',
              color: Colors.blue[400],
            ),
          ),
          LayoutId(
            id: 13,
            child: Image.asset(
              'army.png',
              color: Colors.blue[400],
            ),
          ),
          LayoutId(
            id: 14,
            child: Image.asset(
              'fleet.png',
              color: Colors.red[400],
            ),
          ),
          LayoutId(
            id: 15,
            child: Image.asset(
              'army.png',
              color: Colors.red[400],
            ),
          ),
          LayoutId(
            id: 16,
            child: Image.asset(
              'army.png',
              color: Colors.red[400],
            ),
          ),
          LayoutId(
            id: 17,
            child: Image.asset(
              'fleet.png',
              color: Colors.green,
            ),
          ),
          LayoutId(
            id: 18,
            child: Image.asset(
              'army.png',
              color: Colors.green,
            ),
          ),
          LayoutId(
            id: 19,
            child: Image.asset(
              'army.png',
              color: Colors.green,
            ),
          ),
          LayoutId(
            id: 20,
            child: Image.asset(
              'fleet.png',
              color: Colors.yellowAccent,
            ),
          ),
          LayoutId(
            id: 21,
            child: Image.asset(
              'army.png',
              color: Colors.yellowAccent,
            ),
          ),
          LayoutId(
            id: 22,
            child: Image.asset(
              'army.png',
              color: Colors.yellowAccent,
            ),
          ),
        ])));

class BoardPieceDelegate extends MultiChildLayoutDelegate {
  BoardPieceDelegate({this.position});

  final Offset? position;

  @override
  void performLayout(Size size) {
    Size russiaFleet1 = Size.zero;
    if (hasChild(1)) {
      russiaFleet1 = layoutChild(
        1,
        BoxConstraints(maxWidth: 32, maxHeight: 32),
      );
    }

    if (hasChild(2)) {
      final russiaFleet2 = layoutChild(
        2,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final russiaArmy1 = layoutChild(
        3,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final russiaArmy2 = layoutChild(
        4,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final englandArmy = layoutChild(
        5,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final englandFleet1 = layoutChild(
        6,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final englandFleet2 = layoutChild(
        7,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final germanyFleet = layoutChild(
        8,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final germanyArmy1 = layoutChild(
        9,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final germanyArmy2 = layoutChild(
        10,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final franceFleet = layoutChild(
        11,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final franceArmy1 = layoutChild(
        12,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final franceArmy2 = layoutChild(
        13,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final austriaFleet = layoutChild(
        14,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final austriaArmy1 = layoutChild(
        15,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final austriaArmy2 = layoutChild(
        16,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final italyFleet = layoutChild(
        17,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final italyArmy1 = layoutChild(
        18,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final italyArmy2 = layoutChild(
        19,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final turkeyFleet = layoutChild(
        20,
        const BoxConstraints(
          maxWidth: 32,
          maxHeight: 32,
        ),
      );
      final turkeyArmy1 = layoutChild(
        21,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );
      final turkeyArmy2 = layoutChild(
        22,
        const BoxConstraints(
          maxWidth: 22,
          maxHeight: 22,
        ),
      );

      positionChild(1, Offset(430, 360)); // SEV fleet
      positionChild(2, Offset(430, 95)); // STP fleet
      positionChild(3, Offset(438, 260)); // MOS army
      positionChild(4, Offset(380, 265)); // WAR army
      positionChild(5, Offset(147, 89)); // LVP army
      positionChild(6, Offset(200, 60)); // EDI fleet
      positionChild(7, Offset(174, 175)); // LON fleet
      positionChild(8, Offset(274, 145)); // KIE fleet
      positionChild(9, Offset(305, 215)); // BER army
      positionChild(10, Offset(270, 240)); // MUN army
      positionChild(11, Offset(37, 205)); // BRE fleet
      positionChild(12, Offset(118.5, 258)); // PAR army
      positionChild(13, Offset(115, 350)); // MAR army
      positionChild(14, Offset(270, 480)); // TRI fleet
      positionChild(15, Offset(245, 385)); // VIE army
      positionChild(16, Offset(325, 400)); // BUD army
      positionChild(17, Offset(215, 577)); // NAP fleet
      positionChild(18, Offset(197, 490)); // ROM army
      positionChild(19, Offset(201, 430)); // VEN army
      positionChild(20, Offset(400, 450)); // ANK fleet
      positionChild(21, Offset(383, 505)); // CON army
      positionChild(22, Offset(410, 520)); // SMY army
    }
  }

  @override
  bool shouldRelayout(BoardPieceDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
