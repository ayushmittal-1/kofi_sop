import 'package:flutter/material.dart';
import 'package:serious_shit/components/bottom_nav_bar.dart';
import 'shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottombar
  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex= index;

    });



  }
//pages
  final List<Widget> _pages =[
    ShopPage(),
    CartPage(),


  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index)=> navigateBottomBar(index) ,

      ),
      body: _pages[_selectedIndex],
    );
  }
}
