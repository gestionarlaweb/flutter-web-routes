import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/buttom_widget.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) =>
          (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu(),
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          ButtomWidget(
            textW: 'Contador Stateful',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            //onPressedW: () => Navigator.pushNamed(context, '/stateful'),
            //onPressedW: () => navigationService.navigateTo('/stateful'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Contador Provider',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/provider'),
            //onPressedW: () => Navigator.pushNamed(context, '/provider'),
            //onPressedW: () => navigationService.navigateTo('/provider'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Otra página',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/abc123'),
            //onPressedW: () => Navigator.pushNamed(context, '/404'),
            //onPressedW: () => navigationService.navigateTo('/abc123'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Stateful 100',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Provider 200',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        children: [
          ButtomWidget(
            textW: 'Contador Stateful',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Contador Provider',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Otra página',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/abc123'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Stateful 100',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
          ),
          SizedBox(width: 10),
          ButtomWidget(
            textW: 'Provider 200',
            colorW: Colors.black,
            onPressedW: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
          ),
        ],
      ),
    );
  }
}
