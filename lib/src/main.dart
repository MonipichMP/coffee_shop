import 'package:flutter/cupertino.dart';
import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Coffee shop',
      home: MainScreen(),
    );
  }
}
