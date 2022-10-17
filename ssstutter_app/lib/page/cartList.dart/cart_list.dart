import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppbar(context),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: cartController.cartItems.length,
              itemBuilder: (context, index) {
                var widthSize = MediaQuery.of(context).size;

                var currentItems = cartController.cartItems[index];
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(0)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        // width: 150,
                        // height: 150,
                        child: Image.asset(
                          currentItems.product.image,
                          width: 150,
                          height: 150,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              currentItems.product.title.toUpperCase(),
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              NumberFormat.currency(
                                      locale: 'vi', decimalDigits: 0)
                                  .format(currentItems.product.price),
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Quantity: ${currentItems.quantity}",
                              style: GoogleFonts.robotoMono(
                                textStyle: const TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  // height: 1.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),

        //padding: const EdgeInsets.only(left: 10,right: 10),

        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "THÀNH TIỀN ",
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      // height: 1.5),
                    ),
                  ),
                ),
                Text(
                  NumberFormat.currency(locale: 'vi', decimalDigits: 0)
                      .format(cartController.totalAmount.value),
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      // height: 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            child: Text(
              "THANH TOÁN",
              style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                    height: 1.5),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),

      ]),
    );
  }

  AppBar createAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Tooltip(
        message: 'Quay lại',
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/homepage');
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Giỏ hàng',
        style: GoogleFonts.robotoMono(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        )),
      ),
      actions: [],
    );
  }
}
