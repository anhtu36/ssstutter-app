import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeus_app/detailedPage/cartcontrol.dart';
import 'package:zeus_app/pages/all.dart';
import 'package:zeus_app/pages/favorite.dart';
import 'package:zeus_app/pages/helian.dart';
import 'package:zeus_app/pages/man.dart';
import 'package:zeus_app/pages/sale50.dart';
import 'package:zeus_app/pages/woman.dart';
import 'package:zeus_app/page/cartList.dart/cart_list.dart';
import 'package:zeus_app/screens/home_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  CartController cartController = Get.put(CartController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/sale': (BuildContext context) => const SaleOff(),
          '/man': (BuildContext context) => const ForMan(),
          '/woman': (BuildContext context) => const ForWoman(),
          '/helianthus': (BuildContext context) => const Helianthus(),
          '/all': (BuildContext context) => const AllProduct(),
          '/favour': (BuildContext context) => const FavoriteProduct(),
          '/cart': (BuildContext context) => const CartPage(),
          '/homepage': (BuildContext context) => const HomePage(),
        },
        home: const HomePage());
  }
}
