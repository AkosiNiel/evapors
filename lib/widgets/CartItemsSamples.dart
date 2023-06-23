import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CartItemsSamples extends StatelessWidget{
 @override
 Widget build(BuildContext contex){
  return Column(
    children: [
      Container(
        height: 110,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          Radio(value:"", 
          groupValue:"",
          activeColor: Colors.black,
          onChanged: (index){

          }, 
          ),
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            child: Image.asset("pictures/1.jpg"),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text("Disposable Vape",
           style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
           ),
          ),
          Text(
            "₱ 450 ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ) ,
            ),
        ],
       ),
       ),
       Spacer(),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.delete,
               color: Colors.red,
             ),
             Row(
              children: [
                Container(
                  padding:EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                   child: Icon(
                    CupertinoIcons.minus,
                    size:18,
                   ),
                ),
              ],
             )
          ],
        ),
        )
        ],),
      ),
    ],
  );
 }

}