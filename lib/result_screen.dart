import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constans.dart';
import 'Bottom.dart';


class ResultPage extends StatelessWidget {
  final String bmi;
  final String HealthStatus;
  final String todo;

  ResultPage({required this.bmi,required this.HealthStatus,required this.todo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "RESULT:",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                Colour: Col,
                WidgetCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      HealthStatus,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.green[800]),
                    ),
                    Text(
                      bmi,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 80.0),
                    ),
                    Text(todo,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w200),textAlign: TextAlign.center,)
                  ],
                ),
                onPress: () {}),
          ),
          BottomButton(
            ontap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULATE',
          )
        ],
      ),
    );
  }
}
