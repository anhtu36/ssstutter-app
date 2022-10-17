import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/categories.dart';

class NamQuanBo extends StatefulWidget {
  const NamQuanBo({super.key});

  @override
  State<NamQuanBo> createState() => _NamQuanBoState();
}

class _NamQuanBoState extends State<NamQuanBo> {
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
              itemBuilder: (context, index) => ItemCard(product: quanbo[index]),
              itemCount: 2),
        ))
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final QuanBo product;
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

class QuanBo {
  final String image, title, addColors, price;
  final int id;
  QuanBo(
      {required this.image,
      required this.title,
      required this.addColors,
      required this.price,
      required this.id});
}

List<QuanBo> quanbo = [
  QuanBo(
      image: 'assets/images/formjeans.JPG',
      title: 'Form Jeans',
      addColors: '+2 màu',
      price: '499.000 đ',
      id: 1),
  QuanBo(
      image: 'assets/images/taperjeans.JPG',
      title: 'Taper Jeans',
      addColors: '+2 màu',
      price: '549.000 đ',
      id: 2),
];
