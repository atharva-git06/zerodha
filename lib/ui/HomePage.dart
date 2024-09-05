
import 'package:flutter/material.dart';

import '../applist/apps.dart';
import '../orders/orders.dart';
import '../portfolio/portfolio.dart';
import '../profile/profile.dart';
import '../watchlist/firstpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    Orders(),
    Portfolio(),
    Apps(),
    Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(

          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            elevation: 15.0,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                label: 'Watchlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cases),
                label: 'Portfolio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.square),
                label: 'Apps',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'OP0000',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
          ),
          body: Container(
            color: Color(0xFFEEEEEE),
            child:Column(
              children: <Widget>[
                Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
              ],
            ),
          ),
        ));
  }
}
