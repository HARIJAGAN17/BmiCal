import 'package:flutter/material.dart';

import 'constans.dart';

class GenderCard extends StatelessWidget {
  final IconData gender;
  final String label;
  GenderCard(this.gender, this.label);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelstyle,
        )
      ],
    );
  }
}
