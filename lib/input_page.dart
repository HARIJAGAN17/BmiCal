import 'package:bmi/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Bottom.dart';
import 'icon_file.dart';
import 'reusable_card.dart';
import 'constans.dart';
import 'calculator_brain.dart';
import 'package:bmi/result_screen.dart';
enum Gender {
  male,
  female,
}

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

Gender selectedGender = Gender.male;
int height = 150;
int weight = 60;
int age = 20;

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      Colour: selectedGender == Gender.male
                          ? activateCol
                          : inactivateCol,
                      WidgetCard: GenderCard(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Colour: selectedGender == Gender.female
                          ? activateCol
                          : inactivateCol,
                      WidgetCard: GenderCard(FontAwesomeIcons.venus, 'Female'),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                  onPress: () {},
                  Colour: Col,
                  WidgetCard: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Height'),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: NumberStyle,
                            ),
                            Text('cm'),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.pinkAccent,
                            inactiveTrackColor: Colors.white,
                            thumbColor: Colors.pinkAccent,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                            overlayColor: Color(0xFFF6E0E6),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            },
                            max: 200.0,
                            min: 110.0,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      Colour: Col,
                      WidgetCard: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Weight',
                              style: labelstyle,
                            ),
                            Text(
                              weight.toString(),
                              style: NumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                RoundIcon(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {},
                      Colour: Col,
                      WidgetCard: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Age',
                              style: labelstyle,
                            ),
                            Text(
                              age.toString(),
                              style: NumberStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcon(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10.0),
                                RoundIcon(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              ontap: () {
                calculator cb = calculator(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(bmi: cb.getCal(), HealthStatus: cb.HealthResult(), todo: cb.HealthBottom()),),
                );},
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPress;

  RoundIcon({required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPress,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 10.0,
      fillColor: inactivateCol,
    );
  }
}
