import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamPhuKien extends StatefulWidget {
  const NamPhuKien({super.key});

  @override
  State<NamPhuKien> createState() => _NamPhuKienState();
}

class _NamPhuKienState extends State<NamPhuKien> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 25,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) =>
                  ItemCard(product: phukien[index]),
              itemCount: 6),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final PhuKienNam product;
  //final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 170,
                    height: 260,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.cover)),
                    // child:
                    //     Hero(tag: "${product.id}",
                    //     child: Image.asset(product.image)),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.title,
                        style: GoogleFonts.robotoMono(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1.5),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        product.price,
                        style: GoogleFonts.robotoMono(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              height: 1.5),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        product.addColors,
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
            )));
  }
}

class PhuKienNam {
  final String image, title, addColors, price;
  final int id;
  PhuKienNam(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<PhuKienNam> phukien = [
  PhuKienNam(
      image: 'assets/images/scapver2.JPG',
      title: 'S Cap Ver.2',
      addColors: '+5 màu',
      price: '99.500 đ',
      id: 1),
  PhuKienNam(
      image: 'assets/images/shortvitalsock.JPG',
      title: 'Short-Vital Socks Pack',
      addColors: '+4 màu',
      price: '79.00 đ',
      id: 2),
  PhuKienNam(
      image: 'assets/images/vitageglasses.JPG',
      title: 'Vintage Glasses Bag',
      addColors: '+2 màu',
      price: '25.000 đ',
      id: 3),
  PhuKienNam(
      image: 'assets/images/anchorbracelet.JPG',
      title: 'Anchor Bracelet Ver.2',
      addColors: '+4 màu',
      price: '80.000 đ',
      id: 4),
  PhuKienNam(
      image: 'assets/images/midvitalsock.JPG',
      title: 'Mid-Vital Sock Pack',
      addColors: '+3 màu',
      price: '49.500 đ',
      id: 5),
  PhuKienNam(
      image: 'assets/images/retroglasses.JPG',
      title: 'Retro Glasses Bag',
      addColors: '+2 màu',
      price: '25.000 đ',
      id: 6),
];
