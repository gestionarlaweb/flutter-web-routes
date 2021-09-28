import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('No se encontró la página', style: TextStyle(fontSize: 20)),
          ButtomWidget(
            textW: 'Regresar',
            onPressedW: () => Navigator.pushNamed(context, '/stateful'),
            colorW: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
