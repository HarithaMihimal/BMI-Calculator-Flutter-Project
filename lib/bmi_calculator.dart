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
      backgroundColor: Colors.grey[500],
      //center the appbar title
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
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
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 50),
                          Text("Male", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Icon(Icons.female, size: 50),
                          Text("Female", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  color: Colors.green,
                  child: Column(
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
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.purple,
                      child: Column(
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
                    SizedBox(width: 5),
                    Container(
                      color: Colors.orange,
                      child: Column(
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
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(onPressed: () {}, child: Text("Calculate BMI")),
          ],
        ),
      ),
    );
  }
}
