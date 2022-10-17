import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeus_app/detailedPage/color_picker.dart';

class ColorsProducts extends StatefulWidget {
  const ColorsProducts({super.key});

  @override
  State<ColorsProducts> createState() => _ColorsProductsState();
}

class _ColorsProductsState extends State<ColorsProducts> {
  int _currentColor = 0;
  List<Color> colors = [
    const Color.fromARGB(255, 51, 103, 144),
    const Color(0xFFF8C078),
    const Color(0xFFA29B9B),
    const Color.fromARGB(255, 4, 4, 4),
    //const Color.fromARGB(255, 255, 255, 255),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Chọn màu ',
              style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            )),
        const SizedBox(height: 10),
        Row(
          children: [
            SizedBox(
              height: 35,
              width: 175,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentColor = index;
                        });
                      },
                      child:
                          ColorPicker(_currentColor == index, colors[index])),
                  separatorBuilder: (_, index) => const SizedBox(
                        width: 5,
                      ),
                  itemCount: colors.length),
            ),
          ],
        ),
      ],
    );
  }
}
