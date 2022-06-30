import 'package:flutter/material.dart';
import 'package:widgetgaller/widgets/bottom_menu.dart';
import '../routes/app_routes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomMenu(
        items: AppRoute.listScreens,
      ),
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            FlutterLogo(
              size: 300,
            ),
            SizedBox(
              height: 5,
            ),
            Text('Orders Screen...'),
          ],
        ),
      ),
    );
  }
}
