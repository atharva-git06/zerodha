
import 'package:flutter/material.dart';
import 'package:zerodha/watchlist/watchlist1.dart';
import 'package:zerodha/watchlist/watchlist2.dart';
import 'package:zerodha/watchlist/watchlist3.dart';
import 'package:zerodha/watchlist/watchlist4.dart';
import 'package:zerodha/watchlist/watchlist5.dart';

import '../sizeconfig.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin{
  static const List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Watchlist 1',
    ),
    Tab(
      text: 'Watchlist 2',
    ),
    Tab(
      text: 'Watchlist 3',
    ),
    Tab(
      text: 'Watchlist 4',
    ),
    Tab(
      text: 'Watchlist 5',
    ),
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Color(0xFFEEEEEE),
            title: Text(
              'Marketwatch',
              style: TextStyle(fontSize: 27, color: Colors.black),
            ),
            actions: <Widget>[
              Icon(
                Icons.keyboard_arrow_down,
                size: 45,
                color: Colors.black,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35.0),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    labelPadding: EdgeInsets.symmetric(horizontal: 25),
                    tabs: myTabs
                  ),


                ],
              ),
            )),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            WatchList1(),
            WatchList2(),
            WatchList3(),
            WatchList4(),
            WatchList5(),
          ],
        ),
      ),
    );

  }
}


