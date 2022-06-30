import 'package:flutter/material.dart';
import 'package:widgetgaller/routes/app_routes.dart';
import 'package:widgetgaller/widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomMenu(
        items: AppRoute.listScreens,
      ),
      backgroundColor: Colors.lightGreenAccent,
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
            Text('Hola'),
            Text('Edwin Koh'),
          ],
        ),
      ),
    );
  }
}
