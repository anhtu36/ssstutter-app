import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamQuan extends StatefulWidget {
  const NamQuan({super.key});

  @override
  State<NamQuan> createState() => _NamQuanState();
}

class _NamQuanState extends State<NamQuan> {
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
                  ItemCard(product: quanNam[index]),
              itemCount: 4),
        ))
      ],
    );
    ;
  }
}

class ItemCard extends StatelessWidget {
  final QuanNam product;
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

class QuanNam {
  final String image, title, addColors, price;
  final int id;
  QuanNam(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<QuanNam> quanNam = [
  QuanNam(
      title: 'Smart Pants',
      price: '419.000 đ',
      image: 'assets/images/a5.JPG',
      addColors: '+4 màu',
      id: 5),
  QuanNam(
      title: 'Fit Pants',
      price: '499.000 đ',
      image: 'assets/images/a10.JPG',
      addColors: '+7 màu',
      id: 10),
  QuanNam(
      title: 'Surfer Trousers',
      price: '499.000 đ',
      image: 'assets/images/v2.jpeg',
      addColors: '+3 màu',
      id: 12),
  QuanNam(
      title: 'Le Trousers',
      price: '449.000 đ',
      image: 'assets/images/v3.jpeg',
      addColors: '+5 màu',
      id: 13),
];
