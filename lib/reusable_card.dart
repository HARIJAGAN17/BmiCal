import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color Colour;
  final Widget WidgetCard;
  final VoidCallback? onPress;

  ReusableCard({required this.Colour, required this.WidgetCard,required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: WidgetCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colour),
      ),
    );
  }
}
