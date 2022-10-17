import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeProducts extends StatefulWidget {
  const SizeProducts({super.key});

  @override
  State<SizeProducts> createState() => _SizeProductsState();
}

class _SizeProductsState extends State<SizeProducts> {
  final List<String> sizeList = ['0', '1', '2', '3'];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Chọn size ',
              style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            )),
        const SizedBox(height: 10),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                              width: 2)),
                      child: Text(
                        sizeList[index],
                        style: GoogleFonts.robotoMono(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                             // fontSize: 15,
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey),
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemCount: sizeList.length),
        ),
      ],
    );
  }
}
