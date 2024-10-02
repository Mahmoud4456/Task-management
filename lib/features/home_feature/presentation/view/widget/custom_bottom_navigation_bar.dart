import 'package:flutter/material.dart';
import 'package:task_manager/core/utils/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: primaryColor,
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home , color: iconColor,),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.people_outlined , color: iconColor,),
          icon:  Icon(Icons.people_alt_outlined , ),
          label: 'Teams',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.details_rounded, color:iconColor,),
          label: "Details",
          icon: Icon(Icons.details_rounded),
        ),
      ],
    ) ;
  }
}
