
import 'package:flutter/material.dart';
import 'package:team_project/core/constants.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext context, int newindex, Widget_) {
          return BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            currentIndex: 
            newindex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedItemColor: kblackcolor(),
            unselectedItemColor: kmildgrey(),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), label: "Add Post "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.photo_library_sharp), label: "feed"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account") 
            ], 
          );
        });
  }
}
