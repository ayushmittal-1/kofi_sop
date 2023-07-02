import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange,});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      
      child: GNav(
        onTabChange: (value) => onTabChange!(value),


        mainAxisAlignment: MainAxisAlignment.center,
          backgroundColor: Colors.white10,
          activeColor: Colors.black,
          tabBorderRadius: 100,
          tabActiveBorder: Border.all(color:Colors.black),
          tabMargin: EdgeInsets.all(8),


          tabs: [
        GButton(icon: Icons.home,text: 'Shop',),
        GButton(icon: Icons.shopping_bag_outlined,text: 'Cart',),
      ]),
    );
  }
}
