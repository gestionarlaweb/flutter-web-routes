import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:bases_web/ui/shared/menu_widget.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MenuWidget(),
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
    );
  }
}
