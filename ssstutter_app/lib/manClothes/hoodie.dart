import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamHoodie extends StatefulWidget {
  const NamHoodie({super.key});

  @override
  State<NamHoodie> createState() => _NamHoodieShortState();
}

class _NamHoodieShortState extends State<NamHoodie> {
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
              itemBuilder: (context, index) => ItemCard(product: hoodie[index]),
              itemCount: 3),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Hoodie product;
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

class Hoodie {
  final String image, title, addColors, price;
  final int id;
  Hoodie(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<Hoodie> hoodie = [
  Hoodie(
      image: 'assets/images/citySweatshirtparis.JPG',
      title: 'City Sweatshirt Paris',
      addColors: '+2 màu',
      price: '209.500 đ',
      id: 1),
  Hoodie(
      image: 'assets/images/luxyrySHoodie.JPG',
      title: 'Luxury S Hoodie',
      addColors: '+2 màu',
      price: '349.500 đ',
      id: 2),
  Hoodie(
      image: 'assets/images/matesweatshirt.JPG',
      title: 'Mate Sweatshirt',
      addColors: '+8 màu',
      price: '299.000 đ',
      id: 3),
];
