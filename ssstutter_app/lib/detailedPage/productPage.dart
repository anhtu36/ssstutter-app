import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:zeus_app/constant/list_constant.dart';
import 'package:zeus_app/detailedPage/addtocart.dart';
import 'package:zeus_app/detailedPage/fav_button.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';
import 'package:zeus_app/detailedPage/colors.dart';
import 'package:zeus_app/detailedPage/size.dart';
import 'package:zeus_app/manClothes/sominam.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';
import 'package:zeus_app/page/cartList.dart/cart_list.dart';
import 'package:zeus_app/product/product.dart';

class DetailProductCart extends StatefulWidget {
  final SoMiNam manSoMi;
  const DetailProductCart({super.key, required this.manSoMi});

  // FavourCounterController favourCounterController = Get.find();
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProductCart> {
  CartController cartController = Get.find();

  void addPostFrameCallback(FrameCallback callback) {}
  @override
  Widget build(BuildContext context) {
    cartController.initQuantity();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: size.width,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.manSoMi.image),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/man');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: textColorTabs,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Badge(
                              badgeContent: const Text("0"),
                              child: const Icon(
                                Icons.favorite_border_outlined,
                                color: textColorTabs,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartPage()));
                              },
                              child: Badge(
                                badgeContent: Obx(() => Text(
                                    cartController.total.value.toString())),
                                child: const Icon(
                                  Icons.local_grocery_store_outlined,
                                  color: textColorTabs,
                                  size: 30,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: Text(
                      widget.manSoMi.title.toUpperCase(),
                      style: GoogleFonts.robotoMono(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.5,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  //SizedBox(width: 20),

                  Text(
                    NumberFormat.currency(locale: 'vi', decimalDigits: 0)
                        .format(widget.manSoMi.price),
                    style: GoogleFonts.robotoMono(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.5,
                          fontSize: 18),
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 20),
          const ColorsProducts(),
          const SizedBox(height: 20),
          const SizeProducts(),
          const SizedBox(height: 20),
          ProductCounterAndFavIcon(manSoMi: widget.manSoMi),
          const SizedBox(height: 25),
          AddToCart(soMi: widget.manSoMi),
        ],
      ),
    );
  }
}


  //void Obx() => Text(cartController.numOfItem.value.toString());

// @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {});
  // }