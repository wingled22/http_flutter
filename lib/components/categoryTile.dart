import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final int Id;
  final String Name;
const CategoryTile({  required this.Id, required this.Name }) ;

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
          width: 287,
          height: 84,
          margin: EdgeInsets.only(bottom: 20),
          decoration: ShapeDecoration(
            color: Color(0xFFF0BE4C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 8,
                  offset: Offset(1, 27),
                  spreadRadius: -23,
                )
              ],
            ),
          child: Stack(
            children: [
              Positioned(
                top: 21.5,
                left: 19,
                child: Text(
                    this.Id.toString(),
                    style: const TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                top: 19,
                left: 84,
                child: Text(
                  this.Name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Positioned(
                top: 48,
                left: 84,
                child: Text(
                    'Available',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                    ),
                ),
              ),
              const Positioned(
                top: 28,
                left: 211,
                child: Icon(
                    Icons.edit,
                ),
              ),
              const Positioned(
                top: 28,
                left: 245,
                child: Icon(
                    Icons.delete,
                ),
              )
            ],
          ),
        ),


      // child: Container(
      //     width: 287,
      //     height: 84,
      //     margin: const EdgeInsets.only(bottom: 20),
      //     decoration: ShapeDecoration(
      //         color: Color(0xFFF0BE4C),
      //         shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(15),
      //       ),
      //       shadows: [
      //         BoxShadow(
      //           color: Color(0x3F000000),
      //           blurRadius: 8,
      //           offset: Offset(1, 27),
      //           spreadRadius: -23,
      //         )
      //       ],
      //       ),
      //     child: Row(
      //         mainAxisSize: MainAxisSize.min,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //             Container(
      //                 width: 287,
      //                 height: 84,
      //                 margin: EdgeInsets.only(bottom: 20),
      //                 child: Stack(
      //                     children: [
      //                         Positioned(
      //                             left: 0,
      //                             top: 0,
      //                             child: Container(
      //                                 width: 287,
      //                                 height: 84,
      //                                 decoration: ShapeDecoration(
      //                                     color: Color(0xFFF0BE4C),
      //                                     shape: RoundedRectangleBorder(
      //                                         borderRadius: BorderRadius.circular(15),
      //                                     ),
      //                                     shadows: [
      //                                         BoxShadow(
      //                                             color: Color(0x3F000000),
      //                                             blurRadius: 8,
      //                                             offset: Offset(1, 27),
      //                                             spreadRadius: -23,
      //                                         )
      //                                     ],
      //                                 ),
      //                             ),
      //                         ),
      //                         Positioned(
      //                             left: 19,
      //                             top: 19,
      //                             child: Container(
      //                                 width: 249.50,
      //                                 height: 45,
      //                                 child: Row(
      //                                     mainAxisSize: MainAxisSize.min,
      //                                     mainAxisAlignment: MainAxisAlignment.start,
      //                                     crossAxisAlignment: CrossAxisAlignment.center,
      //                                     children: [
      //                                          SizedBox(
      //                                             width: 54,
      //                                             height: 40,
      //                                             child: Text(
      //                                                 this.Id.toString(),
      //                                                 style: TextStyle(
      //                                                     color: Colors.black,
      //                                                     fontSize: 36,
      //                                                     fontWeight: FontWeight.w400,
      //                                                 ),
      //                                             ),
      //                                         ),
      //                                         const SizedBox(width: 11),
      //                                         Container(
      //                                             width: 116,
      //                                             height: 45,
      //                                             child:  Stack(
      //                                                 children: [
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 0,
      //                                                         child: SizedBox(
      //                                                             width: 116,
      //                                                             child: Text(
      //                                                                 this.Name,
      //                                                                 style: TextStyle(
      //                                                                     color: Colors.black,
      //                                                                     fontSize: 24,
      //                                                                     fontWeight: FontWeight.w400,
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                     Positioned(
      //                                                         left: 0,
      //                                                         top: 29,
      //                                                         child: SizedBox(
      //                                                             width: 116,
      //                                                             child: Text(
      //                                                                 'Available',
      //                                                                 style: TextStyle(
      //                                                                     color: Colors.black,
      //                                                                     fontSize: 12,
      //                                                                     fontStyle: FontStyle.italic,
      //                                                                     fontWeight: FontWeight.w400,
      //                                                                 ),
      //                                                             ),
      //                                                         ),
      //                                                     ),
      //                                                 ],
      //                                             ),
      //                                         ),
      //                                         const SizedBox(width: 11),
      //                                         const SizedBox(width: 11),
      //                                     ],
      //                                 ),
      //                             ),
      //                         ),
      //                     ],
      //                 ),
      //             ),
      //         ],
      //     ),
      // )    
    );
  }
}