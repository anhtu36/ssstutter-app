import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';
import 'package:zeus_app/manClothes/sominam.dart';

class CartCounter extends StatelessWidget {
  CartCounter({super.key, required this.manSoMi});
    final SoMiNam manSoMi;

  CartController cartController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildButton(
            icon: Icons.remove,
            press: () {
              cartController.removeItem();
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Obx(
            () => Text(cartController.numOfItem.toString().padLeft(2, "0"),
                style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      //height: 1.5,
                      fontSize: 22),
                )),
          ),
        ),
        buildButton(
            icon: Icons.add,
            press: () {
              cartController.addItem();
            })
      ],
    );
  }

  Widget buildButton({required IconData icon, required Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              //backgroundColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 3.0),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              press();
            },
            child: Icon(
              icon,
              color: Colors.black,
            )));
  }
}
