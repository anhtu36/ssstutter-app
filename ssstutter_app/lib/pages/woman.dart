import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/categories/womancategoris.dart';
import 'package:zeus_app/constant/list_constant.dart';

class ForWoman extends StatefulWidget {
  const ForWoman({super.key});

  @override
  State<ForWoman> createState() => _ForWomanState();
}

class _ForWomanState extends State<ForWoman> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14,
      child: Scaffold(
        appBar: AppBar(
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
            'Woman',
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
                      'Đầm & Jumpsuit',
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
                      'Quần',
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
                      'Chân Váy',
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
                      'Đồ Bơi & Đồ Đi Biển',
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
                      'Hoodies & SwearShirt',
                      style: GoogleFonts.robotoMono(
                        fontWeight: FontWeight.bold,
                        color: textColorTabs,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        // body: const WomanCategories(),
      ),
    );
  }
}

// List<String> categories = [
//   "Sơ Mi & Áo Kiểu",
//   "Áo Blazer & Áo Khoác",
//   "Đầm & Jumpsuit",
//   "Len & Dệt",
//   "Quần",
//   "Quần Bò",
//   "Chân Váy",
//   "Áo Thun",
//   "Quần Short",
//   "Giày",
//   "Túi & Ví",
//   "Đồ Bơi & Đồ Đi Biển",
//   "Phụ Kiện",
//   "Hoodies & SwearShirt",
// ];
