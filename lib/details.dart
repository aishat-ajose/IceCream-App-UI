import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  final Color pink = Color(0xFFF9B3C2);
  final Color pink2 = Color(0xFFF0C3C0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink2,
      appBar: AppBar(elevation: 0.0, backgroundColor: pink2,),
      body:Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.33 ,
                alignment: Alignment.center,
                child: Image.asset('assets/pic.png', height: 250,),
              ),
              Container(
                padding: EdgeInsets.only(left:25, top:40, right: 25),
                height: MediaQuery.of(context).size.height * 0.54 + 7,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
                child: ListView(
                  children: [
                    Text("Vanilla ice cream",style: TextStyle(fontSize: 35)),
                    SizedBox(height: 10,),
                    Text(" \$ 3.50", style: TextStyle(fontSize: 25, color: pink)),
                    SizedBox(height: 10,),
                    Wrap(
                      children: [
                        category("Most popular flavour"),
                        SizedBox(width: 20,),
                        category('Soft')
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Vanilla ice cream and yorghut ice cream are suitable for those who take extra care of their health.",
                    style: TextStyle(fontSize: 17)),

                    SizedBox(height: 35,),
                    Row(
                      children: [
                        Icon(Icons.transfer_within_a_station, color: pink,), SizedBox(width: 20,),
                        Text("For lactose intolerant people", style: TextStyle(fontSize: 17),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.settings_input_component, color: pink,), SizedBox(width: 20,),
                        Text("For gluten intolerant people",style: TextStyle(fontSize: 17))
                      ],
                    )
                  ],
                )
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28,
            right:20,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pink
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
            ),
          )
        ],
      )
    );
  }
  
  Widget category(String name){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:Color(0xfffffdd0).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(name,style: TextStyle(fontSize: 18)),
    );
  }
}