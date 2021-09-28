import 'package:bases_web/provider/counter_provider.dart';
import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  final String base;
  const CounterProviderView({Key? key, required this.base}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(this.base),
      child: _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20),
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'contador... ${counterProvider.counter}',
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
                onPressedW: () => {counterProvider.increment()}),
            ButtomWidget(
                textW: 'Decrementar..',
                colorW: Colors.red,
                onPressedW: () => {counterProvider.decrement()}),
          ],
        ),
      ],
    );
  }
}
