import 'package:flutter/material.dart';
import 'package:widgetgaller/models/item_menu.dart';
import 'package:widgetgaller/screens/home_screen.dart';
import 'package:widgetgaller/screens/login_screen.dart';
import 'package:widgetgaller/screens/orders_screen.dart';
import 'package:widgetgaller/screens/profile_screen.dart';
import 'package:widgetgaller/screens/singup_screen.dart';

class AppRoute {
  static const String root = '/';
  static final List<MenuOption> listScreens = [
    MenuOption(
      icon: Icons.house_outlined,
      route: '/',
      screen: const HomeScreen(),
      title: 'House',
    ),
    MenuOption(
      icon: Icons.login_outlined,
      route: '/orders',
      screen: const OrderScreen(),
      title: 'orders',
    ),
    MenuOption(
      title: 'Login',
      route: '/Login',
      icon: Icons.login_outlined,
      screen: const LoginScreen(),
    ),
    MenuOption(
      title: 'Profile',
      route: '/profile',
      icon: Icons.person_outlined,
      screen: const ProfileScreen(),
    ),
    MenuOption(
      title: 'Sing Up',
      route: '/singup',
      icon: Icons.account_circle_outlined,
      screen: const SingUpScreen(),
    ),
  ];
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    for (MenuOption item in listScreens) {
      routes[item.route] = (context) => item.screen;
    }
    return routes;
  }
}
