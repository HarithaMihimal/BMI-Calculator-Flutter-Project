import 'package:flutter/material.dart';
import 'constants.dart';

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  bool isMale = true;
  int height = 183;
  int weight = 75;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      //center the appbar title
      appBar: AppBar(
        title: const Text('BMI Calculator', style: TextStyle(color: kTilwCol)),
        centerTitle: true,
        backgroundColor: kAppBarColor,
      ),
      body: Container(
        // color: Colors.red,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kMaleCardColor,
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                size: 50,
                                color: kLabelTextColor,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kLabelTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 10,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kFemaleCardColor,
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.female,
                                size: 50,
                                color: kLabelTextColor,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kLabelTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    color: kHeightContainerColor,
                    child: Column(
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                            color: kLabelTextColor,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "183",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: kNumberTextColor,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(color: kLabelTextColor),
                            ),
                          ],
                        ),
                        Slider(
                          min: 80,
                          max: 200,
                          value: 183,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          color: kWeightContainerColor,
                          child: Column(
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                  color: kLabelTextColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "75",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kNumberTextColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(width: 5),
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        flex: 10,
                        child: Container(
                          color: kAgeContainerColor,
                          child: Column(
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  color: kLabelTextColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "24",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kNumberTextColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: Icon(Icons.remove),
                                  ),
                                  SizedBox(width: 5),
                                  FloatingActionButton(
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kCalculateButtonColor,
                      foregroundColor: kButtonTextColor,
                      shape: RoundedRectangleBorder(),
                      minimumSize: Size(double.infinity, 100),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Calculate BMI",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
