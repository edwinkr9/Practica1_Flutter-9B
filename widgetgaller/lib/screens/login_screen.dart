import 'package:flutter/material.dart';
import 'package:widgetgaller/routes/app_routes.dart';

import '../widgets/bottom_menu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomMenu(
        items: AppRoute.listScreens,
      ),
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              FlutterLogo(
                size: 300,
              ),
              SizedBox(
                height: 5,
              ),
              Text('Login Screen...'),
            ]),
      ),
    );
  }
}
