
import 'package:flutter/material.dart';

import 'package:news_app/home_tabs/favourites.dart';
import 'package:news_app/home_tabs/pupular.dart';
import 'package:news_app/home_tabs/whats new.dart';


import 'package:news_app/shared_ui/navigation-drawer.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        title: Text('Explore'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
          Tab(text: "WHATS NEW"),
          Tab(text: "PUPULAR"),
          Tab(text: "FAVOURITES"),
        ],
        controller: _tabController,
        ),
      ) ,
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(children: [
          WhatsNew(),
          Pupular(),
          Favourites(),

        ],controller: _tabController,
          ),
      ),
    );

  }
}
