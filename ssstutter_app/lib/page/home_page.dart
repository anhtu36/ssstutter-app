import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/constant/list_constant.dart';
import 'package:zeus_app/slide/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
            
        actions: [
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 70),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
            icon: const Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/sale');
              },
              child: Container(
                width: size.width,
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/anhchinh.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Danh Mục",
                style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                highlightColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pushNamed('/all');
                },
                child: Row(
                  children: [
                    Text(
                      "Tất cả",
                      style: GoogleFonts.robotoMono(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sale');
                  },
                  child: buildCard1()),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/man');
                  },
                  child: buildCard2()),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/woman');
                  },
                  child: buildCard3()),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/helianthus');
                  },
                  child: buildCard4()),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Đề Xuất',
                style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/all');
                },
                child: Row(
                  children: <Widget>[
                    Text(
                      'Tất cả',
                      style: GoogleFonts.robotoMono(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 14,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              recommends.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 170,
                        height: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(
                                recommends[index]['imgAssets'] as String),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              recommends[index]['title'] as String,
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    height: 1.5),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              recommends[index]['price'] as String,
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    height: 1.5),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              recommends[index]['addcolor'] as String,
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 40),
        const CustomeCarouselHomePage(
          items: slider,
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Xem Gần Đây',
                style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/all');
                },
                child: Row(
                  children: [
                    Text(
                      'Tất cả',
                      style: GoogleFonts.robotoMono(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(viewed.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 170,
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(
                                viewed[index]['imgAssets'] as String),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            viewed[index]['title'] as String,
                            style: GoogleFonts.robotoMono(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  height: 1.5),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            viewed[index]['price'] as String,
                            style: GoogleFonts.robotoMono(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  height: 1.5),
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            viewed[index]['addcolor'] as String,
                            style: GoogleFonts.robotoMono(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontSize: 12,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

Widget buildCard1() => Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        width: 180,
        height: 220,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/IMG_E7094.JPG'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'SALE NỬA GIÁ',
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
Widget buildCard2() => Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        width: 180,
        height: 220,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/IMG_E7148.JPG'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'FOR MAN',
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
Widget buildCard3() => Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        width: 180,
        height: 220,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/IMG_E7147.JPG'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'FOR WOMAN',
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
Widget buildCard4() => Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        width: 180,
        height: 220,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/IMG_E7095.JPG'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5)),
            ),
            Positioned(
              bottom: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'HELIANTHUS',
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

 // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(categories.length, (index) {
        //       return Padding(
        //         padding: const EdgeInsets.only(left: 15),
        //         child: SizedBox(
        //           width: 180,
        //           height: 220,
        //           child: Stack(
        //             children: <Widget>[
        //               Container(
        //                 decoration: BoxDecoration(
        //                     image: DecorationImage(
        //                       image: AssetImage(
        //                           categories[index]['imgAsset'] as String),
        //                       fit: BoxFit.cover,
        //                     ),
        //                     borderRadius: BorderRadius.circular(5)),
        //               ),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.black.withOpacity(0.1),
        //                     borderRadius: BorderRadius.circular(5)),
        //               ),
        //               Positioned(
        //                 bottom: 5,
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(10.0),
        //                   child: Text(
        //                     categories[index]['title'] as String,
        //                     style: GoogleFonts.robotoMono(
        //                       textStyle: const TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.bold,
        //                           color: Colors.white),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       );
        //     }),
        //   ),
        // ),