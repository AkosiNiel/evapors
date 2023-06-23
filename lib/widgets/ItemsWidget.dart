import 'package:flutter/material.dart';


class ItemsWidget extends StatelessWidget{
 @override

Widget build(BuildContext context){
   return GridView.count(
     childAspectRatio: 0.68,
     //physics: NeverScrollableScrollPhysics(),

     crossAxisCount: 2,
     shrinkWrap: true,
     children: [
              for(int i=1; i<4; i++)
       Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: EdgeInsets.symmetric(vertical:8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "-50%", 
                    style: TextStyle(
                      fontSize: 14, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                 ),
                 Icon(
                   Icons.favorite_border,
                   color: Colors.red,

                 ),
              ],
            ),
    
           InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(10),
              child:Image.asset("pictures/$i.jpg"),
            ),
           ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Disposable Vape",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ), 
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₱450",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color:Colors.green,

                      )
                    ],
                  ),
                 )
          ],
        ),
       )
     ],
   );
}

}