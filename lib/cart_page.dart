import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serious_shit/components/coffee_tile.dart';
import 'package:serious_shit/components/coffee_tile_deleteicon.dart';
import 'package:serious_shit/models/coffee_object.dart';

import 'models/coffee_shop_object.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0,bottom: 20),
              child: Text('Your Cart',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Expanded(child: ListView.builder(
              itemCount: value.userCart.length,
                itemBuilder: (context, index) {
              Coffee eachCoffee = value.userCart[index];
              return CoffeeTile_2(
                coffee: eachCoffee,
                onPressed: () => removeFromCart(eachCoffee),
              );
            })),
            InkWell(

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown.shade500,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 200,
                child: Center(child: Text('Pay Now',style: TextStyle(fontSize: 20, ),)),

              ),
              onTap:(){
                print('paynow tapped');

              }

            )

          ],
        ),
      ),
    );
  }
}




