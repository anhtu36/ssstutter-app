import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamAoThun extends StatefulWidget {
  const NamAoThun({super.key});

  @override
  State<NamAoThun> createState() => _NamAoThunState();
}

class _NamAoThunState extends State<NamAoThun> {
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
                  ItemCard(product: aoThunNam[index]),
              itemCount: 4),
        ))
      ],
    );
    ;
  }
}

class ItemCard extends StatelessWidget {
  final AoThunNam product;
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

class AoThunNam {
  final String image, title, addColors, price;
  final int id;
  AoThunNam(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<AoThunNam> aoThunNam = [
  AoThunNam(
      title: 'Wash Polo',
      price: '419.000 đ',
      image: 'assets/images/a8.JPG',
      addColors: '+3 màu',
      id: 1),
  AoThunNam(
      title: 'Sunflower Polo Tee',
      price: '399.000 đ',
      image: 'assets/images/v1.jpeg',
      addColors: '+3 màu',
      id: 2),
  AoThunNam(
      title: 'Sunflower Big Tee',
      price: '399.000 đ',
      image: 'assets/images/a3.JPG',
      addColors: '+10 màu',
      id: 3),
  AoThunNam(
      title: 'Linen Tee',
      price: '139.500 đ',
      image: 'assets/images/LinenTee.JPG',
      addColors: '+5 màu',
      id: 4),
];
