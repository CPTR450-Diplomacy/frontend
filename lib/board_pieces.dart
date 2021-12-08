import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'province_svgs.dart';

Widget HexmapBoardPieces = Container(
    child: SizedBox(
        height: 660.0,
        width: 464.0,
        child: CustomMultiChildLayout(delegate: ProvinceDelegate(), children: [
          LayoutId(
              id: 1,
              child: Image.asset('fleet.png', color: Colors.purple,), ),
          LayoutId(
              id: 2,
              child: Image.asset('fleet.png', color: Colors.purple,), ),
        ])));

class ProvinceDelegate extends MultiChildLayoutDelegate {
  ProvinceDelegate({this.position});

  final Offset? position;

  @override
  void performLayout(Size size) {
    Size NAFPosition = Size.zero;
    if (hasChild(1)) {
      NAFPosition = layoutChild(
        1,
        BoxConstraints(maxWidth: 30, maxHeight: 30),
      );
    }

    if (hasChild(2)) {
      final fleetPosition = layoutChild(
        2,
        const BoxConstraints(
          maxWidth: 30,
          maxHeight: 30,
        ),
      );

      positionChild(1, Offset(438, 360)); // NAF
      positionChild(2, Offset(430, 95)); // MAT
    }
  }

  @override
  bool shouldRelayout(ProvinceDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
