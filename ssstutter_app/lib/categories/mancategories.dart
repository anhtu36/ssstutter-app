import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/constant/list_constant.dart';

class ManCategories extends StatefulWidget {
  const ManCategories({super.key});

  @override
  State<ManCategories> createState() => _ManCategoriesState();
}

class _ManCategoriesState extends State<ManCategories> {
  List<String> categories = [
    "Sơ Mi & Áo Kiểu",
    "Áo Thun",
    "Quần",
    "Len Dệt",
    "Phụ Kiện",
    "Áo Blazer & Áo Khoác",
    "Quần Bò",
    "Quần Short",
    "Giày",
    "Túi & Ví"
  ];
  int selectedFirstItem = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedFirstItem = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  categories[index],
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: selectedFirstItem == index
                          ? textColor
                          : textLightColor,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: defaultPadding / 4),
                  height: 2,
                  width: 45,
                  color: selectedFirstItem == index
                      ? Colors.black
                      : Colors.transparent,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
