import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamGiay extends StatefulWidget {
  const NamGiay({super.key});

  @override
  State<NamGiay> createState() => _NamGiayShortState();
}

class _NamGiayShortState extends State<NamGiay> {
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
                  ItemCard(product: quanShort[index]),
              itemCount: 1),
        ))
      ],
    );
    ;
  }
}

class ItemCard extends StatelessWidget {
  final Giay product;
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

class Giay {
  final String image, title, addColors, price;
  final int id;
  Giay(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<Giay> quanShort = [
  Giay(
      title: 'Joy Shoes',
      price: '649.000 đ',
      image: 'assets/images/joyshoes.JPG',
      addColors: '+4 màu',
      id: 1),
];
