import 'package:flutter/material.dart';
import 'package:horoscope/src/fonts/fonts.dart';
import 'package:horoscope/src/ui/homepage.dart';

class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  double width = 0.0;
  double height = 0.0;
  double statusBar = 0.0;
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool tick = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    statusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: statusBar,),
            navbar(),
            SizedBox(
              height:50
            ),
            textFieldWidget("User Name", "Ranita Dey", _username, false),
            SizedBox(height: 15,),
            textFieldWidget("Password", 'Password', _password, true),
            terms(),
            loginButton(),
            socialButton()
           
          ]
        ),
      ),
    );
  }

  Widget navbar(){
    return  Container(
            width: width,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 31, 1),
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight: Radius.circular(50))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Container(
                    height: 20,
                    width: 35,
                    child:Image.asset('assets/Images/6.png',fit: BoxFit.fill,)
                  ),
                ),
                Text("Signin",style: CustomFonts.medium(20, Colors.white),),
                Container(
                  width: 45,
                  height: 30,
                )
              ],
            ),
          );
  }

  Widget textFieldWidget(String text,String hintText,TextEditingController controller,bool obscure){
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,
                style: CustomFonts.regular(16, Colors.grey[500]!),
                ),
                TextField(
                  obscureText: (obscure)?true:false,
                  controller: controller,
                  decoration: InputDecoration(
                    hintStyle: CustomFonts.medium(15, Color.fromRGBO(0, 0, 0, 0.5)),
                    hintText: hintText
                  ),
                )

              ],
            ),
          );
  }

  Widget terms(){
    return Padding(
              padding: const EdgeInsets.symmetric(vertical:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        tick=!tick;
                      });
                    },
                    child: Container(
                      height: 20,
                      width:20,
                      decoration:BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(3),
                        color: (tick)?Colors.blue[800]:Colors.white
                      )
                    ),
                  ),
                  SizedBox(width:10),
                  Text("By Signing in You Agree to our.",style: CustomFonts.medium(16, Colors.black),),
                  SizedBox(width: 5,),
                  Text("Terms of use",style: CustomFonts.medium(16,Colors.blue[800]!),)
                ],
              ),
            );
  }

  Widget loginButton(){
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
      },
      child: Container(
                width: 140,
                height: 33,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 60, 1),
                  borderRadius: BorderRadius.circular(5)
                ),
                child:Center(
                  child:Text("Login",style: CustomFonts.medium(17, Colors.white),)
                ),
              ),
    );
  }

  Widget socialButton(){
    return  Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 170,
                    child: Image.asset("assets/Images/7.png"),
                  ),
                  Container(
                    height: 40,
                    width: 170,
                    child: Image.asset("assets/Images/8.png"),
                  ),
                ],
              ),
            );
  }
}