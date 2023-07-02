import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serious_shit/components/coffee_tile.dart';
import 'package:serious_shit/models/coffee_object.dart';
import 'package:serious_shit/models/coffee_shop_object.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).addToCart(coffee);

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context,value,child) => SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 35.0,bottom: 50),
                child: Center(child: Text('Get a Coffee!',style: TextStyle(fontSize: 28,fontWeight:FontWeight.bold),)),
              ),

              Expanded(child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, i,){
                //get individual coffee
                Coffee eachCoffee = value.coffeeShop[i];


                //return the tile for the coffee
                return CoffeeTile(coffee: eachCoffee,onPressed:()=> addToCart(eachCoffee),
                );



              })
              ),
            ],
          ),
        )
        );
  }
}





