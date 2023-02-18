import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'Home',
    //     name: 'Home',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'ListView1 Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView2 Tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'card_screen',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership_sharp),
    MenuOption(
        route: 'alert_screen',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.warning_rounded),
    MenuOption(
        route: 'avatar_screen',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'Home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'Home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView2Screen());
  }
}
