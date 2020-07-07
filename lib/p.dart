import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget pa(Color color, String title, String imgPath, int index){
    return Container(
      color: color,
      child: Column(children: [
          Container(height: 436,

          
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.bottomCenter,
                height: 356,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20,)
            ],
          )
          
          ),        
          Container(
            height: 236,
            child: Column(
              children: [
                Text(title, style: TextStyle(color:Colors.black87,fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 10),
                  child: Text("Your enjoyment has no limits !. We use a spatula to serve and shape the gelato into beautiful roses. Each petal may be made using a different flavour.",
                  style: TextStyle(color:Colors.black)),
                ),
                Spacer(),

                Container(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SizedBox(width:150),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: index == 1 ? BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)):BoxDecoration(shape: BoxShape.circle,color: Colors.grey[200]),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: index == 2 ? BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)):BoxDecoration(shape: BoxShape.circle,color: Colors.grey[200]),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: index == 3 ? BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)):BoxDecoration(shape: BoxShape.circle,color: Colors.grey[200]),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: index == 4 ? BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)):BoxDecoration(shape: BoxShape.circle,color: Colors.grey[200]),
                      ),
                    Spacer(),
                    
                    index!= 4 ? Text("Skip", style: TextStyle(fontSize: 15)):
                     Container(
                      alignment: Alignment.center,

                      padding: EdgeInsets.symmetric(vertical:10, horizontal: 20),
                      // width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                       child: Text("Start", style: TextStyle(fontWeight: FontWeight.bold),)
                      ), 
                    SizedBox(width: 20,)
                  ],),
                ),
                
                SizedBox(height: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
  