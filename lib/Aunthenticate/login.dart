import 'package:flutter/material.dart';
import 'package:onboarding/homepage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/pic6.png', fit: BoxFit.cover, width: double.infinity),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:50.0, horizontal: 30),
                child: Text('Welcome\nback', style: TextStyle(color:Colors.white, fontSize: 45, fontWeight: FontWeight.w500),),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30),
                height: MediaQuery.of(context).size.height * 45/100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                ),
                child: Form(child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Text(" Please Sign In", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(height:10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFF0A3C2),)
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Forgot Password ?", style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Color(0xFFF0A3C2), fontSize:17),),
                        Text("Sign Up", style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Color(0xFFF0A3C2), fontSize:17),),
                      ],
                    ),
                    SizedBox(height: 30,)
                  ],
                ),),
              )
            ],
          ),
          Positioned(
            top:  MediaQuery.of(context).size.height/2,
            right: 30,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: Container(
                height: 50,
                width:  50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF9B3C2).withOpacity(0.6),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(Icons.arrow_forward, color: Colors.white,)),
              ),
            ),
          )
        ],
      )
    );
  }
}