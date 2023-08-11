import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFCCC2A0),
      body: Container(
        height: 250,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            alignment: AlignmentDirectional.center,
            height: 156,
            decoration: ShapeDecoration(
                color: const Color(0xFF888A30),
                image: const DecorationImage(
                          image: AssetImage("lib/images/petahhhr.jpg",),
                          fit: BoxFit.cover
                        ),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 86,
                  left: 18,
                  child: Container(
                    width: 140,
                    height: 140,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // child: Image.asset(
                    //   "lib/images/peter_g.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                    decoration: ShapeDecoration(
                        color: const Color(0xFF277C58),
                        image: const DecorationImage(
                          image: AssetImage("lib/images/peter_g.jpg",),
                          fit: BoxFit.fitWidth
                        ),
                        shape: RoundedRectangleBorder(
                            // side: BorderSide(width: 5, color: Color(0xFFCCC2A0)),
                            side: const BorderSide(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.circular(89),
                        ),
                        shadows: [
                            BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                            )
                        ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}