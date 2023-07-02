import 'package:flutter/material.dart';
import 'package:serious_shit/models/coffee_object.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
   CoffeeTile({super.key, required this.coffee , required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 500,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(15),
        color: Colors.white24,
      ),
      margin: EdgeInsets.only(bottom: 10,right: 10,left: 10),

      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagepath),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onPressed,    //****13:59*****//
        ),

      ),
    );
  }
}
