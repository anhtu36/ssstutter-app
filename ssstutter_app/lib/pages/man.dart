import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/categories/mancategories.dart';
import 'package:zeus_app/constant/list_constant.dart';
import 'package:zeus_app/manClothes/blazer&aokhoac.dart';
import 'package:zeus_app/manClothes/giay.dart';
import 'package:zeus_app/manClothes/hoodie.dart';
import 'package:zeus_app/manClothes/phukien.dart';
import 'package:zeus_app/manClothes/quanbo.dart';
import 'package:zeus_app/manClothes/quanshort.dart';
import 'package:zeus_app/manClothes/tuivavi.dart';
import 'package:zeus_app/pages/bodyall.dart';
import 'package:zeus_app/manClothes/aothun.dart';
import 'package:zeus_app/manClothes/lendetnam.dart';
import 'package:zeus_app/manClothes/quannam.dart';
import 'package:zeus_app/manClothes/sominam.dart';

class ForMan extends StatefulWidget {
  const ForMan({super.key});

  @override
  State<ForMan> createState() => _ForManState();
}

class _ForManState extends State<ForMan> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
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
            'Man',
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
          bottom: TabBar(
              indicatorColor: Colors.black,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Sơ Mi & Áo Kiểu',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Áo Thun',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                    child: SizedBox(
                  height: 20,
                  child: Text(
                    'Quần',
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      color: textColorTabs,
                    ),
                  ),
                )),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Len & Dệt',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Phụ Kiện',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Áo Blazer & Áo Khoác',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Quần Bò',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Quần Short',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Giày',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Túi & Ví',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Đồ bơi & Đồ Đi Biển',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      'Hoodie & SweatShirt',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        body: const TabBarView(children: <Widget>[
          Center(child: AoNamSoMi()),
          Center(child: NamAoThun()),
          Center(child: NamQuan()),
          Center(child: NamLenDet()),
          Center(child: NamPhuKien()),
          Center(child: AoBlazer()),
          Center(child: NamQuanBo()),
          Center(child: NamQuanShort()),
          Center(child: NamGiay()),
          Center(child: NamTuiVaVi()),
          Center(
            child: Text(
              'Các sản phẩm này hiện đã hết hàng !',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Center(child: NamHoodie()),
        ]),
      ),
    );
  }
}
