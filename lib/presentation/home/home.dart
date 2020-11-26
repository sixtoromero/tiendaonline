import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myonlinestore/presentation/country/countrypage.dart';
import 'package:myonlinestore/presentation/store/storepage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _page = 0;

  final _pageOptions = [
    StorePage(),
    CountryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_page],
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          Icon(Icons.store_outlined, size: 20, color: Colors.black),
          Icon(Icons.flag_outlined, size: 20, color: Colors.black),
        ],
        animationDuration: Duration(
          milliseconds: 500
        ),
        //index: pageindex,
        animationCurve: Curves.bounceOut,
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}