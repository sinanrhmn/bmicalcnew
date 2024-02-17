import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value = 0;
  double w_value = 0;
  double result = 0;
  void calculate() {
    h_value = double.parse(height.text) / 100;
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.purple),
          ),
          backgroundColor: Colors.amber),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: TextField(
              controller: height,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.red,
                border: OutlineInputBorder(),
                hintText: 'Height',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: TextField(
              controller: weight,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.teal,
                border: OutlineInputBorder(),
                hintText: 'Weight',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  calculate();
                });

              },
              child: Text('Calculator')),
          SizedBox(
            height: 20,
          ),
          Text('Result'),
        ],
      ),
    );
  }
}
