import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class AoBlazer extends StatefulWidget {
  const AoBlazer({super.key});

  @override
  State<AoBlazer> createState() => _AoBlazerState();
}

class _AoBlazerState extends State<AoBlazer> {
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
              itemBuilder: (context, index) => ItemCard(product: blazer[index]),
              itemCount: 4),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Blazer product;
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

class Blazer {
  final String image, title, addColors, price;
  final int id;
  Blazer(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<Blazer> blazer = [
  Blazer(
      image: 'assets/images/v9.jpeg',
      title: 'David Jacket',
      addColors: '+3 màu',
      price: '399.000 đ',
      id: 1),
  Blazer(
      image: 'assets/images/Houndcoat.PNG',
      title: 'Hound Coat',
      addColors: '+2 màu',
      price: '959.500 đ',
      id: 2),
  Blazer(
      image: 'assets/images/space-windjacket.PNG',
      title: 'Space-Wind Jacket',
      addColors: '+2 màu',
      price: '749.500 đ',
      id: 3),
  Blazer(
      image: 'assets/images/thomascoat.JPG',
      title: 'Thomas Coat',
      addColors: '+2 màu',
      price: '599.500 đ',
      id: 4),
];
