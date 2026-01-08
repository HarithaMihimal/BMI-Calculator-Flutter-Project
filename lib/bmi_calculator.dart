import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //center the appbar title
      appBar: AppBar(title: const Text('BMI Calculator'), centerTitle: true),
      body: Container(
        // color: Colors.red,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("MALE")),
                    ElevatedButton(onPressed: () {}, child: Text("FEMALE")),
                  ],
                ),
                Column(
                  children: [
                    Text("Height"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "183",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("cm"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "75",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
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
                            SizedBox(width: 20),
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
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text("Age"),
                        Text(
                          "24",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
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
                            SizedBox(width: 20),
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
                  ],
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text("Calculate BMI")),
          ],
        ),
      ),
    );
  }
}
