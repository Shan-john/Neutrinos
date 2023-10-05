import 'package:flutter/material.dart';
import 'package:team_project/persentation/Screen/home/home.dart';
import 'package:team_project/persentation/Widgets/Bottom_Nav.dart';

class SCreen_Main extends StatelessWidget {
   SCreen_Main({super.key});
  final pages = [Screen_Home()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:   ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, index, _) {
          return pages[index];
        },
      ),
        bottomNavigationBar: BottomNavigationWidget()
      ),
    );
  }
}
 
