import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'provinces.dart';

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
          child: SingleChildScrollView(
            child: Container(
                //decoration: BoxDecoration(border: Border.all()),
                color: Colors.black,
                child: SizedBox(
                    height: 660.0,
                    width: 500.0,
                    child: CustomMultiChildLayout(
                      delegate: MyDelegate(),
                      children: [
                        LayoutId(
                            id: 1,
                            child: SvgPicture.string(
                              NAF,
                              width: 400.0,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 2,
                            child: SvgPicture.string(
                              MAT,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 3,
                            child: SvgPicture.string(
                              NAT,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 4,
                            child: SvgPicture.string(
                              IRI,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 5,
                            child: SvgPicture.string(
                              NWG,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 6,
                            child: SvgPicture.string(
                              ENG,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 7,
                            child: SvgPicture.string(
                              TUN,
                              color: Color(0xFFFFF9BD),
                            )),
                        // LayoutId(
                        //     id: 8,
                        //     child: SvgPicture.string(
                        //       NTH,
                        //       color: Color(0xFF9AD9EA),
                        //     )),
                        LayoutId(
                            id: 9,
                            child: SvgPicture.string(
                              WME,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 10,
                            child: SvgPicture.string(
                              TYS,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 11,
                            child: SvgPicture.string(
                              CLY,
                              color: Color(0xFFFFF9BD),
                            ))
                      ],
                    ))),
          ),
        ));
  }
}

class MyDelegate extends MultiChildLayoutDelegate {
  MyDelegate({this.position});

  final Offset? position;

  @override
  void performLayout(Size size) {
    Size NAFPosition = Size.zero;
    if (hasChild(1)) {
      NAFPosition = layoutChild(
        1,
        BoxConstraints(maxWidth: 335, maxHeight: 335),
      );
    }

    if (hasChild(4)) {
      final MATPosition = layoutChild(
        2,
        const BoxConstraints(
          maxWidth: 1850,
          maxHeight: 1850,
        ),
      );
      final NATPosition = layoutChild(
        3,
        const BoxConstraints(
          maxWidth: 487.5,
          maxHeight: 487.5,
        ),
      );
      final IRIPosition = layoutChild(
        4,
        const BoxConstraints(
          maxWidth: 374,
          maxHeight: 374,
        ),
      );
      final NWGPosition = layoutChild(
        5,
        const BoxConstraints(
          maxWidth: 430,
          maxHeight: 430,
        ),
      );
      final ENGPosition = layoutChild(
        6,
        const BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
      );
      final TUNPosition = layoutChild(
        7,
        const BoxConstraints(
          maxWidth: 397,
          maxHeight: 397,
        ),
      );
      // final NTHPosition = layoutChild(
      //   8,
      //   const BoxConstraints(
      //     maxWidth: 380,
      //     maxHeight: 380,
      //   ),
      // );
      final WMEPosition = layoutChild(
        9,
        const BoxConstraints(
          maxWidth: 350,
          maxHeight: 350,
        ),
      );
      final TYSPosition = layoutChild(
        10,
        const BoxConstraints(
          maxWidth: 348,
          maxHeight: 348,
        ),
      );
      final CLYPosition = layoutChild(
        11,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );

      positionChild(1, Offset(-105, 433));
      positionChild(2, Offset(-334, -70.5));
      positionChild(3, Offset(-172.5, -158.3));
      positionChild(4, Offset(-105, -41));
      positionChild(5, Offset(21, -141));
      positionChild(6, Offset(-119.5, 2.5));
      positionChild(7, Offset(-68, 441));
      // positionChild(8, Offset(24.5, -59));
      positionChild(9, Offset(-102, 367));
      positionChild(10, Offset(-22.2, 412.8));
      positionChild(11, Offset(-61, -170));
    }
  }

  @override
  bool shouldRelayout(MyDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
