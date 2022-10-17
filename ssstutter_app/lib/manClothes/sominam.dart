import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:zeus_app/detailedPage/productPage.dart';
import 'package:intl/number_symbols.dart';

class AoNamSoMi extends StatefulWidget {
  const AoNamSoMi({super.key});

  @override
  State<AoNamSoMi> createState() => _AoNamSoMiState();
}

class _AoNamSoMiState extends State<AoNamSoMi> {
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
              itemBuilder: (context, index) => ItemCard(
                    product: soMi[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailProductCart(manSoMi: soMi[index]))),
                  ),
              itemCount: soMi.length),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final SoMiNam product;
  final VoidCallback press;
  //final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
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
                        NumberFormat.currency(
                                locale: 'vi', decimalDigits: 0)
                            .format(product.price),
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

class SoMiNam {
  final String image, title, addColors;
  final int id,price;

  SoMiNam(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});

  toMap() {}

  static fromMap(Map<String, dynamic> map) {}
}

List<SoMiNam> soMi = [
  SoMiNam(
      title: 'Sunflower Polo Tee',
      price: 399000,
      image: 'assets/images/v1.jpeg',
      addColors: '+3 màu',
      id: 1),
  SoMiNam(
      title: 'Bei Linen Shirt',
      price: 429000,
      image: 'assets/images/v6.jpeg',
      addColors: '+3 màu',
      id: 2),
  SoMiNam(
      title: 'GodFather Shirt',
      price: 449000,
      image: 'assets/images/v8.jpeg',
      addColors: '+4 màu',
      id: 3),
  SoMiNam(
      title: 'Felix Shirt',
      price: 449000,
      image: 'assets/images/FelixShirt.JPG',
      addColors: '+2 màu',
      id: 4),
  SoMiNam(
      title: 'Hemi Shirt',
      price: 419000,
      image: 'assets/images/HemiShirt.JPG',
      addColors: '+1 màu',
      id: 5),
  SoMiNam(
      title: 'Lala Cuban Shirt',
      price: 449000,
      image: 'assets/images/LalacubanShirt.JPG',
      addColors: '+2 màu',
      id: 6),
];
