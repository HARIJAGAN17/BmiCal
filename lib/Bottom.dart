import 'package:flutter/material.dart';
import 'constans.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback?  ontap;
  final String buttonTitle;

  BottomButton({required this.ontap, required this.buttonTitle});
  //create a container with text in it

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
          ),
        ),
        color: Colors.orangeAccent,
        margin: EdgeInsets.only(top: 20.0),
        height: bottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}