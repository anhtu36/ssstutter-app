import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //dynamic size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/sale');
            },
            child: SizedBox(
              height: 35,
              width: 90,
             // color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.8,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'SALE OFF',
                        style: GoogleFonts.robotoMono(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/man');
            },
            child: SizedBox(
              height: 35,
              width: 90,
              //color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.8,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'FOR MAN',
                        style: GoogleFonts.robotoMono(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/woman');
            },
            child: SizedBox(
              height: 35,
              width: 90,
              //color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.8,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'FOR WOMAN',
                        style: GoogleFonts.robotoMono(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/helianthus');
            },
            child: SizedBox(
              height: 35,
              width: 90,
              //color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.8,
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'HELIANTHUS',
                        style: GoogleFonts.robotoMono(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// InkWell(
//             onTap: () {
//               Navigator.of(context).pushNamed('/helianthus');
//             },
//             child: Container(
//               height: 35,
//               width: 90,
//               color: Colors.white,
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.black,
//                     style: BorderStyle.solid,
//                     width: 1.8,
//                   ),
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Center(
//                       child: Text(
//                         'HELIANTHUS',
//                         style: GoogleFonts.robotoMono(
//                             textStyle: const TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 12)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )