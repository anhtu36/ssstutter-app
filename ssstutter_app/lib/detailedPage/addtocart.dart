import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';
import 'package:zeus_app/manClothes/sominam.dart';
import 'package:zeus_app/product/product.dart';

class AddToCart extends StatelessWidget {
  final SoMiNam soMi;

  AddToCart({super.key, required this.soMi});
  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                cartController.addItemInCart(soMi);
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                width: 50,
                height: 50,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Center(
                        child: Icon(
                          Icons.local_grocery_store_outlined,

                          //color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
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
                    "Mua ngay".toUpperCase(),
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
            ),
          ],
        ),
      ),
    );
  }
}
