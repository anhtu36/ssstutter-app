import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/pages/bodyall.dart';
import 'package:zeus_app/pages/categories.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarBuild(context),
      body: const Body(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppbarBuild(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Tooltip(
        message: 'Quay lại',
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Tất cả',
        style: GoogleFonts.robotoMono(
            textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        )),
      ),
      actions: <Widget>[
        Tooltip(
          message: 'Thông báo',
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                //color: Color.fromARGB(255, 240, 78, 8)
                color: Colors.black,
              )),
        ),
        Tooltip(
          message: 'Giỏ hàng',
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cart');
              },
              icon: const Icon(Icons.local_grocery_store_outlined,
                  color: Colors.black)),
        )
      ],
    );
  }
}
