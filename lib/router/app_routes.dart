import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOption>{
    MenuOption(
        route: 'Home',
        name: 'Home',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'listview1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'listview2',
        screen: const ListView2Screen(),
        icon: Icons.list),
  };

  static Map<String, Widget Function(BuildContext)> routes = {
    'Home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen()
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView2Screen());
  }
}
