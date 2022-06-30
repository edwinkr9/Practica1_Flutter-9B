import 'package:flutter/cupertino.dart';
import 'package:widgetgaller/widgets/botton_menu.dart';

import '../routes/app_routes.dart';
import '../models/models.dart';

class ButtomMenu extends StatelessWidget {
  List<ButtonMenu> _getOptions(List<MenuOption> items) =>
      AppRoute.listScreens.map((option) => ButtonMenu(option: option)).toList();
  final List<MenuOption> items;

  const ButtomMenu({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: _getOptions(items),
            )));
  }
}
