import 'package:flutter/material.dart';
import 'package:onboarding/details.dart';
import 'package:onboarding/p.dart';

class HomePage extends StatelessWidget {
  final Color pink = Color(0xFFF9B3C2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left:20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hey, Stacy', style:  TextStyle(fontSize: 35,letterSpacing: 1.5, fontWeight: FontWeight.w500),),
                    Padding(
                      padding: EdgeInsets.only(right:10),
                      child:Icon(Icons.search, color: Color(0xFFF9B3C2), size: 30,))
                  ],
                ),
                SizedBox(height: 7,),
                Text("We have something yummy for you", style: TextStyle(fontSize: 18, color: Colors.blueGrey) ),

                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Flavours', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                    Container(
                      padding: const EdgeInsets.only(right:20.0),
                      child: Text("See more", style: TextStyle(decoration: TextDecoration.underline, color: Color(0xFFF9B3C2), fontWeight: FontWeight.w500, fontSize:16),),
                    )
                  ],
                ),
                
                SizedBox(height:10),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      flavours(context, "Vanilla", "\$3.50", 'assets/pic.png'),
                      flavours(context, "Coconut", "\$4.50", 'assets/pic.png'),
                      flavours(context, "Strawberry", "\$3.50", 'assets/pic.png')
                    ],
                  ),
                ),
                
                SizedBox(height:20),
                Text('Toppings for you', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                SizedBox(height: 20,),
                Wrap(
                  children: [
                    toppings('Chocolate'),
                    toppings('Caramel'),
                    toppings('Nuts'),
                    toppings('Sweet Sauce'),
                  ],
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.17,
            minChildSize: 0.17,
            maxChildSize: 0.45,
            builder: (BuildContext context, myscrollController) {
              var port = MediaQuery.of(context).size.height * 0.19;
              var port2 = myscrollController.hasClients ? myscrollController.position.viewportDimension: port;
              return Container(
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    color: pink.withOpacity(0.6),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    controller: myscrollController,
                    children: [
                      // Center(
                      //   child: Container(
                      //     width: 20,
                      //     height: 1,
                      //     color: Colors.black, 
                      //     ),
                      // ),
                      // SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.only(left:30),
                        child: 
                          port2 > port + 10 ? big(context):small(context)
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget small(context){
    return Stack(
      children: [
        Container(height:  MediaQuery.of(context).size.height * 0.19,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 20,
                height: 2,
                color: Colors.grey, 
                ),
            ),
            SizedBox(height: 20,),
            Text("Total: \$12.50", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Order Now",style: TextStyle(fontSize: 17, decoration: TextDecoration.underline, color: Colors.pink.withOpacity(0.6))),
          ]
        ),
        Positioned(
          right: 5,
          child: Container(
            width: MediaQuery.of(context).size.width/3,
            height:  MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              // border: Border.all(style:BorderStyle.solid)
            ),
            child: Image.asset('assets/small.png',fit: BoxFit.cover),
          ),
        )
      ],
    );
  }

  Widget big(context){
    return Stack(
      children: [
        Container(height:  MediaQuery.of(context).size.height * 0.60,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                margin: EdgeInsets.only(right:60),
                width: 20,
                height: 2,
                color: Colors.grey, 
                ),
            ),
            SizedBox(height: 20,),
            Text("Your Choice", style: TextStyle(fontSize: 23),),
            SizedBox(height: 20,),
            Text("1 x Sorbet",style: TextStyle(fontSize: 17, color: Color(0xff955a33).withOpacity(0.7), wordSpacing: 1.5),),SizedBox(height: 5),
            Text("1 x Banana",style: TextStyle(fontSize: 17, color: Color(0xff955a33).withOpacity(0.7),wordSpacing: 1.5),),SizedBox(height: 5),
            Text("1 x Strawberry",style: TextStyle(fontSize: 17, color: Color(0xff955a33).withOpacity(0.7),wordSpacing: 1.5),),
            SizedBox(height: 20,),
            Text("Total: \$12.50", style: TextStyle(fontSize: 18,),),
            SizedBox(height: 20,),
            Text("Order Now",style: TextStyle(fontSize: 17, decoration: TextDecoration.underline, color: Colors.pink.withOpacity(0.6))),
          ],
        ),
        Positioned(
          right: 0,
          child: Container(
            width: MediaQuery.of(context).size.width/2 + 30,
            height:  MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              // border: Border.all(style:BorderStyle.solid),
              image: DecorationImage(image: AssetImage('assets/pic8.png'), fit: BoxFit.fitWidth)
            ),
            child: Image.asset('assets/pic8.png',fit: BoxFit.cover),
          ),
        )
      ],
    );
  }



}
