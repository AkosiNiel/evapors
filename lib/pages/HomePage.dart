import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evapors/widgets/ItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'CategoriesWidget.dart';
import 'package:evapors/widgets/HomeAppBar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context){
  return Scaffold(
    body: ListView (children: [
      HomeAppBar(),
      Container(
        //height: 500,
        padding: EdgeInsets.only(top: 15,),
        decoration: BoxDecoration(
          color: Color.fromRGBO(179, 182, 184, 0.555),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35)
          ),
        ),
       child: Column(children: [
             Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30)
              ),
             child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Here..."
                      )
                    )
                  ),
                 
                ],
             )
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  
                ),
              ),
            ),
           
           
           
            CategoriesWidget(),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "BEST SELLING", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ItemsWidget()
       ], )
      ),
    ],),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            onTap: (index){},
            color: Color.fromARGB(255, 247, 128, 0),
            items:[
               Icon(
                Icons.home,
               size: 30, color:
                Colors.black,
                ),
                    Icon(
                      CupertinoIcons.cart_fill,
               size: 30, color:
                Colors.black,
                ),
                    Icon(
                      Icons.list,
               size: 30, color:
                Colors.black,
                ),
            ],
            ),
  );
 }

}