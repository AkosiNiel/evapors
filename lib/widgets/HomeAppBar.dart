
import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
 @override
Widget build(BuildContext context) {
  return Container(
    color:  Color.fromARGB(255, 247, 128, 0),
    padding: EdgeInsets.all(25),
    child: Row(
      children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "Welcome to Evapors Shop",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),  
          ),
        ),
        Spacer(),
        Badge(
    
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(Icons.shopping_bag_outlined),
          ),
          
         ),
      ],
    ),
  );
}
}