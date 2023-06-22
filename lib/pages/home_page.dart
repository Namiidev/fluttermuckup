import 'package:firstapp/design/colors.dart';
import 'package:firstapp/pages/home_screen.dart';
import 'package:firstapp/widgets/appbar_title.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

//PRINCIPAL WIDGET FOR HOMEPAGE, INCLUDES APPBAR (NAV) / BODY / AND THE BOTTOMBAR ALL IN ONCE
//THE BOTTOM BAR HAS THE FUNCTIONALITY ADDED THANKS TO _BottomBarState (Tipically has this name).
//SO IT CHANGES OF SCREEN ===> WE USE THE $selectedIndex connected to method $_onItemTapped that
//gets an int index AND THAT INDEX IS OBTAINED BY THE "onTap" METHOD OF THE bottomNavigationBar
//WHICH IS ALSO PART FLUTTER/MATERIALAPP SKELETON... WELL THE onTap METHOS PROVIDES DE INDEX PARAMETER
// OF OUR _onItemTapped method so we can change the state of our selectedIndex... then we use setState(){}.

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Account"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "tickets"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "account"),
          ]),
    );
  }
}
