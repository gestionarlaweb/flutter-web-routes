import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Contador Stateful',
            style: TextStyle(fontSize: 20),
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'contador... $counter',
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtomWidget(
                  textW: 'Incrementar..',
                  colorW: Colors.green,
                  onPressedW: () => setState(() => counter++)),
              ButtomWidget(
                  textW: 'Decrementar..',
                  colorW: Colors.red,
                  onPressedW: () => setState(() => counter--)),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
