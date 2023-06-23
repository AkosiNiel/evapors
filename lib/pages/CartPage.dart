import 'package:evapors/widgets/CartAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/CartItemsSamples.dart';


class CartPage extends StatelessWidget {
@override
Widget build(BuildContext context){
  return Scaffold(
    body: ListView(
      children: [
        CartAppBar(),

        Container(
            //Temporary height
           //height: 800,
           padding:EdgeInsets.only(top:15 ),
           decoration: BoxDecoration(
            color: Color.fromARGB(99, 81, 80, 80),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35), 
            topRight: Radius.circular(35))
           ),
           child: Column(children: [
            CartItemsSamples(),
           ],),
        )
      ],
    ),
  );
}
}