import 'package:evapors/pages/CartPage.dart';
import 'package:evapors/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Color.fromRGBO(185, 240, 232, 1),
          ),
          routes:{
             "/" : (context) => HomePage(),
              "cartPage" : (context) => CartPage()
          },
        );
      } 
}

