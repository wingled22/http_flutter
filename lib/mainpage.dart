import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({ Key? key }) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
    width: 107,
    height: 164,
    child: Stack(
        children: [
            Positioned(
                left: 11,
                top: 129,
                child: Container(
                    width: 83,
                    height: 22,
                    decoration: ShapeDecoration(
                        color: Color(0xFF062B18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                    ),
                ),
            ),
            Positioned(
                left: 22,
                top: 134,
                child: Text(
                    'add to cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 107,
                    height: 164,
                    decoration: ShapeDecoration(
                        color: Color(0x00D9D9D9),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.50, color: Color(0xFF062B18)),
                            borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 13,
                top: 42,
                child: SizedBox(
                    width: 81,
                    height: 16,
                    child: Text(
                        'Espresso',
                        style: TextStyle(
                            color: Color(0xFF062B18),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 13,
                top: 84,
                child: Container(
                    width: 25,
                    height: 16,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 25,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                        color: Color(0x00D9D9D9),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF062B18)),
                                            borderRadius: BorderRadius.circular(2),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 1,
                                top: 2,
                                child: SizedBox(
                                    width: 22,
                                    height: 10,
                                    child: Text(
                                        'iced',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF062B18),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 13,
                top: 107,
                child: Container(
                    width: 17,
                    height: 16,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 17,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF062B18),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF062B18)),
                                            borderRadius: BorderRadius.circular(2),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0.68,
                                top: 2,
                                child: SizedBox(
                                    width: 14.96,
                                    height: 10,
                                    child: Text(
                                        '12',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFF2E5D2),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 35,
                top: 107,
                child: Container(
                    width: 17,
                    height: 16,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 17,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                        color: Color(0x00D9D9D9),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF062B18)),
                                            borderRadius: BorderRadius.circular(2),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0.68,
                                top: 2,
                                child: SizedBox(
                                    width: 14.96,
                                    height: 10,
                                    child: Text(
                                        '16',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF062B18),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 57,
                top: 107,
                child: Container(
                    width: 17,
                    height: 16,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 17,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                        color: Color(0x00D9D9D9),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF062B18)),
                                            borderRadius: BorderRadius.circular(2),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0.68,
                                top: 2,
                                child: SizedBox(
                                    width: 14.96,
                                    height: 10,
                                    child: Text(
                                        '20',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFF062B18),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 43,
                top: 84,
                child: Container(
                    width: 25,
                    height: 16,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                    width: 25,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF062B18),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF062B18)),
                                            borderRadius: BorderRadius.circular(2),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 1,
                                top: 2,
                                child: SizedBox(
                                    width: 22,
                                    height: 10,
                                    child: Text(
                                        'hot',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xFFF2E5D2),
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 13,
                top: 58,
                child: SizedBox(
                    width: 81,
                    height: 28,
                    child: Text(
                        '10₱',
                        style: TextStyle(
                            color: Color(0xFF062B18),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                        ),
                    ),
                ),
            ),
        ],
    ),
)
      ),
    );
  }
}