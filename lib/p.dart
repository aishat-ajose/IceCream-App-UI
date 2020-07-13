import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/Aunthenticate/login.dart';
import 'package:onboarding/details.dart';

final Color pink = Color(0xFFF9B3C2);

Widget pa(Color color, String title, String imgPath, int index, context){
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
                       child: InkWell(
                         onTap: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
                         },
                         child: Text("Start", style: TextStyle(fontWeight: FontWeight.bold),))
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

  Widget flavours(context, String name , String price ,String imgPath){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
      },
     child: Container(
        width: MediaQuery.of(context).size.width/3,
        margin: EdgeInsets.only(right:20),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              right: 10,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color:  Color(0xFFF9B3C2).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name, style: TextStyle(fontSize: 18,),),
                    SizedBox(height: 5,),
                    Text(price, style: TextStyle(fontSize: 16, color: pink),)
                  ]
                ),
              ),
            ),
            Positioned(
              top:0,
              right: 0,
              child: Container(
                height: 80,
                width: 80,
                child: Image.asset(imgPath, fit: BoxFit.cover),
              )
            ),
            Positioned(
              bottom:20,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff955a33).withOpacity(0.6)
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget toppings(String name){
    return Container(
      margin: EdgeInsets.only(left:20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: pink.withOpacity(0.3) 
      ),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0, vertical:5),
            child: Text(name, style: TextStyle(fontSize: 18, letterSpacing: 1.2),),
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff955a33).withOpacity(0.6)
            ),
            child: Icon(Icons.add, color: Colors.white),
          )
        ],
      ),
    );
  }
  