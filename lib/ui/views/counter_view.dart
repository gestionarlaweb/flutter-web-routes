import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;
  const CounterView({Key? key, required this.base}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) counter = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // MenuWidget(),
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
