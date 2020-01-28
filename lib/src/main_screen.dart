import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/src/home_screen.dart';
import 'package:coffee_shop/src/map_screen.dart';
import 'package:coffee_shop/src/cart_screen.dart';
import 'package:coffee_shop/src/setting_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text("Home"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.location_solid),
          title: Text("Map"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart),
          title: Text("Cart"),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings_solid),
          title: Text("Setting"),
        ),
      ]),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: HomeScreen());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: MapScreen());
              },
            );
          case 2:
            return CupertinoTabView(

              builder: (context) {
                return CupertinoPageScaffold(child: CartScreen());
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: SettingScreen());
              },
            );
        }
      },
    );
  }
}
