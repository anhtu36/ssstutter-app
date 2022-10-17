import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorPicker extends StatelessWidget {
  final border;
  final color;
  const ColorPicker(this.border, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: border
              ? Border.all(
                  color: color,
                  width: 2,
                )
              : null),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
