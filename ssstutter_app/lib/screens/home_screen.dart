import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zeus_app/page/cartList.dart/cart_list.dart';
import 'package:zeus_app/page/home_page.dart';
import 'package:zeus_app/page/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeTab = 0;

  AppBar? appbar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: getFooter(),
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomeScreen(),
        CartPage(),
        AccountPage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
            // curve: Curves.decelerate,
            //duration: const Duration(milliseconds: 900),
            backgroundColor: Colors.white,
            activeColor: Colors.white,
            color: Colors.black,
            gap: 8,
            selectedIndex: activeTab,
            onTabChange: (index) {
              setState(() {
                activeTab = index;
              });
            },
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                iconActiveColor: Colors.purple,
                //textColor: Colors.purple,
                backgroundColor: Colors.purple.withOpacity(0.2),
                iconSize: 24,
                iconColor: Colors.black,
                //text: 'Trang chủ',
              ),

              GButton(
                icon: Icons.local_grocery_store_outlined,
                iconActiveColor: Colors.deepOrange[600],
                // textColor: Colors.deepOrange[600],
                backgroundColor: Colors.deepOrange[400]!.withOpacity(0.2),
                iconSize: 24,
                iconColor: Colors.black,
                //text: 'Giỏ hàng',
              ),
              GButton(
                icon: Icons.perm_identity_outlined,
                iconActiveColor: Colors.teal,
                // textColor: Colors.teal,
                backgroundColor: Colors.teal.withOpacity(0.2),
                iconSize: 24,
                iconColor: Colors.black,
                //text: 'Tài khoản',
              ),
              // GButton(
              //   icon: Icons.more_horiz_outlined,
              //   iconActiveColor: Colors.grey,
              //   textColor: Colors.grey,
              //   backgroundColor: Colors.grey.withOpacity(0.2),
              //   iconSize: 24,
              //   iconColor: Colors.black,
              //   text: 'Thêm',
              // ),
            ]),
      ),
    );
  }
}






//Container(
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
      //     child: GNav(
      //         // curve: Curves.decelerate,
      //         //duration: const Duration(milliseconds: 900),
      //         backgroundColor: Colors.white,
      //         activeColor: Colors.white,
      //         color: Colors.black,
      //         gap: 8,
      //         onTabChange: (index) {
      //           print(index);
      //         },
      //         padding: const EdgeInsets.all(16),
      //         tabs: [
      //           GButton(
      //             icon: Icons.home_outlined,
      //             iconActiveColor: Colors.purple,
      //             textColor: Colors.purple,
      //             backgroundColor: Colors.purple.withOpacity(0.2),
      //             iconSize: 24,
      //             iconColor: Colors.black,
      //             text: 'Trang chủ',
      //           ),
      //           GButton(
      //             icon: Icons.perm_identity_outlined,
      //             iconActiveColor: Colors.teal,
      //             textColor: Colors.teal,
      //             backgroundColor: Colors.teal.withOpacity(0.2),
      //             iconSize: 24,
      //             iconColor: Colors.black,
      //             text: 'Tài khoản',
      //           ),
      //           GButton(
      //             icon: Icons.local_grocery_store_outlined,
      //             iconActiveColor: Colors.deepOrange[600],
      //             textColor: Colors.deepOrange[600],
      //             backgroundColor: Colors.deepOrange[400]!.withOpacity(0.2),
      //             iconSize: 24,
      //             iconColor: Colors.black,
      //             text: 'Giỏ hàng',
      //           ),
      //           GButton(
      //             icon: Icons.more_horiz_outlined,
      //             iconActiveColor: Colors.grey,
      //             textColor: Colors.grey,
      //             backgroundColor: Colors.grey.withOpacity(0.2),
      //             iconSize: 24,
      //             iconColor: Colors.black,
      //             text: 'Thêm',
      //           ),
      //         ]),
      //   ),
      