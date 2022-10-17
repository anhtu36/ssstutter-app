import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/constant/list_constant.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';
import 'package:zeus_app/detailedPage/cartcounter.dart';
import 'package:zeus_app/manClothes/sominam.dart';

class ProductCounterAndFavIcon extends StatelessWidget {
  ProductCounterAndFavIcon({super.key, required this.manSoMi});

  final SoMiNam manSoMi;
  // int itemcount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartCounter(
            manSoMi: manSoMi,
          ),
          InkWell(
              onTap: () {
                print("liked click");
              },
              child: const Icon(Icons.favorite_border, size: 35)),
        ],
      ),
    );
  }
}
