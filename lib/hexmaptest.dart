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
                        LayoutId(
                            id: 8,
                            child: SvgPicture.string(
                              NTH,
                              color: Color(0xFF9AD9EA),
                            )),
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
                            )),
                        LayoutId(
                            id: 12,
                            child: SvgPicture.string(
                              LVP,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 13,
                            child: SvgPicture.string(
                              WAL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 14,
                            child: SvgPicture.string(
                              EDI,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 15,
                            child: SvgPicture.string(
                              YOR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 16,
                            child: SvgPicture.string(
                              LON,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 17,
                            child: SvgPicture.string(
                              SKA,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 18,
                            child: SvgPicture.string(
                              DEN,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 19,
                            child: SvgPicture.string(
                              HEL,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 20,
                            child: SvgPicture.string(
                              BRE,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 21,
                            child: SvgPicture.string(
                              GAS,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 22,
                            child: SvgPicture.string(
                              POR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 23,
                            child: SvgPicture.string(
                              SPA,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 24,
                            child: SvgPicture.string(
                              PIC,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 25,
                            child: SvgPicture.string(
                              PAR,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 26,
                            child: SvgPicture.string(
                              MAR,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 27,
                            child: SvgPicture.string(
                              GOL,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 28,
                            child: SvgPicture.string(
                              BUR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 29,
                            child: SvgPicture.string(
                              BLANK,
                              color: Colors.grey[400],
                            )),
                        LayoutId(
                            id: 30,
                            child: SvgPicture.string(
                              PIE,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 31,
                            child: SvgPicture.string(
                              TUS,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 32,
                            child: SvgPicture.string(
                              BEL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 33,
                            child: SvgPicture.string(
                              TYR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 34,
                            child: SvgPicture.string(
                              VEN,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 35,
                            child: SvgPicture.string(
                              ROM,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 36,
                            child: SvgPicture.string(
                              NAP,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 37,
                            child: SvgPicture.string(
                              HOL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 38,
                            child: SvgPicture.string(
                              RUH,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 39,
                            child: SvgPicture.string(
                              KIE,
                              color: Color(0xFFF5E49C),
                            )),
                        LayoutId(
                            id: 40,
                            child: SvgPicture.string(
                              APU,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 41,
                            child: SvgPicture.string(
                              BAR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 42,
                            child: SvgPicture.string(
                              NOR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 43,
                            child: SvgPicture.string(
                              STP,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 44,
                            child: SvgPicture.string(
                              FIN,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 45,
                            child: SvgPicture.string(
                              SWE,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 46,
                            child: SvgPicture.string(
                              GOB,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 47,
                            child: SvgPicture.string(
                              BAL,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 48,
                            child: SvgPicture.string(
                              BER,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 49,
                            child: SvgPicture.string(
                              LVN,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 50,
                            child: SvgPicture.string(
                              MOS,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 51,
                            child: SvgPicture.string(
                              WAR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 52,
                            child: SvgPicture.string(
                              PRU,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 53,
                            child: SvgPicture.string(
                              SIL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 54,
                            child: SvgPicture.string(
                              GAL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 55,
                            child: SvgPicture.string(
                              MUN,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 56,
                            child: SvgPicture.string(
                              BOH,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 57,
                            child: SvgPicture.string(
                              VIE,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 58,
                            child: SvgPicture.string(
                              CRO,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 59,
                            child: SvgPicture.string(
                              ADR,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 60,
                            child: SvgPicture.string(
                              ION,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 61,
                            child: SvgPicture.string(
                              SEV,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 62,
                            child: SvgPicture.string(
                              ARM,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 63,
                            child: SvgPicture.string(
                              SYR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 64,
                            child: SvgPicture.string(
                              UKR,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 65,
                            child: SvgPicture.string(
                              RUM,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 66,
                            child: SvgPicture.string(
                              BLA,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 67,
                            child: SvgPicture.string(
                              BUD,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 68,
                            child: SvgPicture.string(
                              TRI,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 69,
                            child: SvgPicture.string(
                              ALB,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 70,
                            child: SvgPicture.string(
                              SER,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 71,
                            child: SvgPicture.string(
                              BUL,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 72,
                            child: SvgPicture.string(
                              ANK,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 73,
                            child: SvgPicture.string(
                              CON,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 74,
                            child: SvgPicture.string(
                              GRE,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 75,
                            child: SvgPicture.string(
                              SMV,
                              color: Color(0xFFFFF9BD),
                            )),
                        LayoutId(
                            id: 76,
                            child: SvgPicture.string(
                              EME,
                              color: Color(0xFF9AD9EA),
                            )),
                        LayoutId(
                            id: 77,
                            child: SvgPicture.string(
                              AEG,
                              color: Color(0xFF9AD9EA),
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
      final NTHPosition = layoutChild(
        8,
        const BoxConstraints(
          maxWidth: 380,
          maxHeight: 380,
        ),
      );
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
      final LVPPosition = layoutChild(
        12,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final WALPosition = layoutChild(
        13,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final EDIPosition = layoutChild(
        14,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final YORPosition = layoutChild(
        15,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final LONPosition = layoutChild(
        16,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final SKAPosition = layoutChild(
        17,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final DENPosition = layoutChild(
        18,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final HELPosition = layoutChild(
        19,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final BREPosition = layoutChild(
        20,
        const BoxConstraints(
          maxWidth: 405,
          maxHeight: 405,
        ),
      );
      final GASPosition = layoutChild(
        21,
        const BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
      );
      final PORPosition = layoutChild(
        22,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final SPAPosition = layoutChild(
        23,
        const BoxConstraints(
          maxWidth: 383,
          maxHeight: 383,
        ),
      );
      final PICPosition = layoutChild(
        24,
        const BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
      );
      final PARPosition = layoutChild(
        25,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final MARPosition = layoutChild(
        26,
        const BoxConstraints(
          maxWidth: 405,
          maxHeight: 405,
        ),
      );
      final GOLPosition = layoutChild(
        27,
        const BoxConstraints(
          maxWidth: 350,
          maxHeight: 350,
        ),
      );
      final BURPosition = layoutChild(
        28,
        const BoxConstraints(
          maxWidth: 410,
          maxHeight: 410,
        ),
      );
      final BLANKPosition = layoutChild(
        29,
        const BoxConstraints(
          maxWidth: 430,
          maxHeight: 430,
        ),
      );
      final PIEPosition = layoutChild(
        30,
        const BoxConstraints(
          maxWidth: 430,
          maxHeight: 430,
        ),
      );
      final TUSPosition = layoutChild(
        31,
        const BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
      );
      final BELPosition = layoutChild(
        32,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final TYRPosition = layoutChild(
        33,
        const BoxConstraints(
          maxWidth: 405,
          maxHeight: 405,
        ),
      );
      final VENPosition = layoutChild(
        34,
        const BoxConstraints(
          maxWidth: 420,
          maxHeight: 420,
        ),
      );
      final ROMPosition = layoutChild(
        35,
        const BoxConstraints(
          maxWidth: 415,
          maxHeight: 415,
        ),
      );
      final NAPPosition = layoutChild(
        36,
        const BoxConstraints(
          maxWidth: 420,
          maxHeight: 420,
        ),
      );
      final HOLPosition = layoutChild(
        37,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final RUHPosition = layoutChild(
        38,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final KIEPosition = layoutChild(
        39,
        const BoxConstraints(
          maxWidth: 430,
          maxHeight: 430,
        ),
      );
      final APUPosition = layoutChild(
        40,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final BARPosition = layoutChild(
        41,
        const BoxConstraints(
          maxWidth: 425,
          maxHeight: 425,
        ),
      );
      final NORPosition = layoutChild(
        42,
        const BoxConstraints(
          maxWidth: 222,
          maxHeight: 217,
        ),
      );
      final STPPosition = layoutChild(
        43,
        const BoxConstraints(
          maxWidth: 222,
          maxHeight: 220,
        ),
      );
      final FINPosition = layoutChild(
        44,
        const BoxConstraints(
          maxWidth: 175,
          maxHeight: 175,
        ),
      );
      final SWEPosition = layoutChild(
        45,
        const BoxConstraints(
          maxWidth: 120,
          maxHeight: 120,
        ),
      );
      final GOBPosition = layoutChild(
        46,
        const BoxConstraints(
          maxWidth: 220,
          maxHeight: 220,
        ),
      );
      final BALPosition = layoutChild(
        47,
        const BoxConstraints(
          maxWidth: 175,
          maxHeight: 175,
        ),
      );
      final BERPosition = layoutChild(
        48,
        const BoxConstraints(
          maxWidth: 156,
          maxHeight: 156,
        ),
      );
      final LVNPosition = layoutChild(
        49,
        const BoxConstraints(
          maxWidth: 185,
          maxHeight: 185,
        ),
      );
      final MOSPosition = layoutChild(
        50,
        const BoxConstraints(
          maxWidth: 156,
          maxHeight: 156,
        ),
      );
      final WARPosition = layoutChild(
        51,
        const BoxConstraints(
          maxWidth: 218,
          maxHeight: 218,
        ),
      );
      final PRUPosition = layoutChild(
        52,
        const BoxConstraints(
          maxWidth: 120,
          maxHeight: 120,
        ),
      );
      final SILPosition = layoutChild(
        53,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final GALPosition = layoutChild(
        54,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final MUNPosition = layoutChild(
        55,
        const BoxConstraints(
          maxWidth: 190,
          maxHeight: 190,
        ),
      );
      final BOHPosition = layoutChild(
        56,
        const BoxConstraints(
          maxWidth: 185,
          maxHeight: 185,
        ),
      );
      final VIEPosition = layoutChild(
        57,
        const BoxConstraints(
          maxWidth: 190,
          maxHeight: 190,
        ),
      );
      final CROPosition = layoutChild(
        58,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final ADRPosition = layoutChild(
        59,
        const BoxConstraints(
          maxWidth: 174,
          maxHeight: 174,
        ),
      );
      final IONPosition = layoutChild(
        60,
        const BoxConstraints(
          maxWidth: 375,
          maxHeight: 365,
        ),
      );
      final SEVPosition = layoutChild(
        61,
        const BoxConstraints(
          maxWidth: 200,
          maxHeight: 200,
        ),
      );
      final ARMPosition = layoutChild(
        62,
        const BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
      );
      final SYRPosition = layoutChild(
        63,
        const BoxConstraints(
          maxWidth: 200,
          maxHeight: 200,
        ),
      );
      final UKRPosition = layoutChild(
        64,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final RUMPosition = layoutChild(
        65,
        const BoxConstraints(
          maxWidth: 240,
          maxHeight: 240,
        ),
      );
      final BLAPosition = layoutChild(
        66,
        const BoxConstraints(
          maxWidth: 295,
          maxHeight: 295,
        ),
      );
      final BUDPosition = layoutChild(
        67,
        const BoxConstraints(
          maxWidth: 200,
          maxHeight: 200,
        ),
      );
      final TRIPosition = layoutChild(
        68,
        const BoxConstraints(
          maxWidth: 175,
          maxHeight: 175,
        ),
      );
      final ALBPosition = layoutChild(
        69,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final SERPosition = layoutChild(
        70,
        const BoxConstraints(
          maxWidth: 175,
          maxHeight: 175,
        ),
      );
      final BULPosition = layoutChild(
        71,
        const BoxConstraints(
          maxWidth: 195,
          maxHeight: 195,
        ),
      );
      final ANKPosition = layoutChild(
        72,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final CONPosition = layoutChild(
        73,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final GREPosition = layoutChild(
        74,
        const BoxConstraints(
          maxWidth: 155,
          maxHeight: 155,
        ),
      );
      final SMVPosition = layoutChild(
        75,
        const BoxConstraints(
          maxWidth: 175,
          maxHeight: 175,
        ),
      );
      final EMEPosition = layoutChild(
        76,
        const BoxConstraints(
          maxWidth: 180,
          maxHeight: 180,
        ),
      );
      final AEGPosition = layoutChild(
        77,
        const BoxConstraints(
          maxWidth: 180,
          maxHeight: 180,
        ),
      );

      positionChild(1, Offset(-105, 433));
      positionChild(2, Offset(-334, -70.5));
      positionChild(3, Offset(-172.5, -158.3));
      positionChild(4, Offset(-104.3, -41));
      positionChild(5, Offset(20.5, -141.5));
      positionChild(6, Offset(-118.5, 2.5));
      positionChild(7, Offset(-68, 441));
      positionChild(8, Offset(24.7, -59));
      positionChild(9, Offset(-102, 367));
      positionChild(10, Offset(-22.2, 412.8));
      positionChild(11, Offset(-61, -170));
      positionChild(12, Offset(-61, -139.5));
      positionChild(13, Offset(-61, -108.8));
      positionChild(14, Offset(-8, -169.8));
      positionChild(15, Offset(-8, -109.7));
      positionChild(16, Offset(-34.5, -64));
      positionChild(17, Offset(71, -155));
      positionChild(18, Offset(71, -124.7));
      positionChild(19, Offset(71.2, -94.2));
      positionChild(20, Offset(-122, 32));
      positionChild(21, Offset(-119, 96.5));
      positionChild(22, Offset(-140.4, 182.5));
      positionChild(23, Offset(-124, 240));
      positionChild(24, Offset(-67, 4));
      positionChild(25, Offset(-87.5, 29));
      positionChild(26, Offset(-68.5, 155.5));
      positionChild(27, Offset(-49.5, 307));
      positionChild(28, Offset(-44.9, 45));
      positionChild(29, Offset(-35.5, 87.7));
      positionChild(30, Offset(-35.8, 179));
      positionChild(31, Offset(-15.3, 279));
      positionChild(32, Offset(-8, -17));
      positionChild(33, Offset(12, 140));
      positionChild(34, Offset(22, 245));
      positionChild(35, Offset(-4.6, 293.3));
      positionChild(36, Offset(18.5, 335.6));
      positionChild(37, Offset(45.5, -47.6));
      positionChild(38, Offset(45.5, -17.6));
      positionChild(39, Offset(96.5, -51));
      positionChild(40, Offset(44, 288));
      positionChild(41, Offset(179, -158));
      positionChild(42, Offset(251, -11));
      positionChild(43, Offset(369, 23));
      positionChild(44, Offset(298, 59));
      positionChild(45, Offset(270, 47));
      positionChild(46, Offset(258, 68));
      positionChild(47, Offset(241, 72));
      positionChild(48, Offset(245, 139));
      positionChild(49, Offset(289, 130));
      positionChild(50, Offset(377, 184));
      positionChild(51, Offset(288, 158));
      positionChild(52, Offset(297, 185));
      positionChild(53, Offset(246, 189));
      positionChild(54, Offset(272, 234));
      positionChild(55, Offset(170, 172));
      positionChild(56, Offset(180, 222));
      positionChild(57, Offset(192, 285));
      positionChild(58, Offset(192, 383));
      positionChild(59, Offset(184, 438));
      positionChild(60, Offset(115, 431));
      positionChild(61, Offset(377, 211));
      positionChild(62, Offset(319, 225));
      positionChild(63, Offset(377, 472));
      positionChild(64, Offset(336, 253));
      positionChild(65, Offset(280, 260));
      positionChild(66, Offset(335, 267));
      positionChild(67, Offset(215, 293));
      positionChild(68, Offset(222, 405));
      positionChild(69, Offset(218, 465));
      positionChild(70, Offset(251, 421));
      positionChild(71, Offset(305, 375));
      positionChild(72, Offset(329, 445));
      positionChild(73, Offset(352, 406));
      positionChild(74, Offset(260, 490));
      positionChild(75, Offset(360, 430));
      positionChild(76, Offset(295, 545));
      positionChild(77, Offset(265, 515));
    }
  }

  @override
  bool shouldRelayout(MyDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
