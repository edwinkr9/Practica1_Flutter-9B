import 'package:flutter/material.dart';

import '../models/models.dart';
import '../routes/app_routes.dart';
import '../widgets/widgets.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  List<Country> _getCountries() => <Country>[
        const Country(name: 'United State', code: 'US'),
        const Country(name: 'Canda', code: 'CA'),
        const Country(name: 'United Kingdom', code: 'UK'),
        const Country(name: 'Autralia', code: 'AU'),
        const Country(name: 'Germany', code: 'DE'),
        const Country(name: 'France', code: 'FR'),
        const Country(name: 'Italy', code: 'IT'),
        const Country(name: 'Spain', code: 'ES'),
        const Country(name: 'Argentina', code: 'AR'),
        const Country(name: 'Mexico', code: 'MX'),
        const Country(name: 'India', code: 'IN'),
        const Country(name: 'China', code: 'CN'),
        const Country(name: 'Japan', code: 'JP'),
        const Country(name: 'Korea', code: 'KR'),
        const Country(name: 'Russia', code: 'RU'),
        const Country(name: 'Netherlands', code: 'NL'),
        const Country(name: 'Select a country', code: 'none'),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomMenu(
        items: AppRoute.listScreens,
      ),
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: const Text('Widget Gallery'),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Form(
              child: Column(
            children: const <Widget>[
              InputForm(
                labelText: 'Last Name',
                hintText: 'Enter your last name',
                icon: Icons.abc,
                isRequired: true,
              ),
              InputForm(
                labelText: 'Email',
                hintText: 'Enter your email',
                icon: Icons.email,
                isRequired: true,
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          const _snackBar = SnackBar(
            content: Text('You have successfully signed up!!!'),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
        },
      ),
    );
  }
}
