import 'package:flutter/material.dart';
import 'package:horoscope/src/fonts/fonts.dart';
import 'package:horoscope/src/ui/homepage.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double width = 0.0;
  double height = 0.0;
  double statusBar = 0.0;
  TextEditingController _username = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _totalTime = TextEditingController();
  TextEditingController _totalPrice = TextEditingController();

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
            avatar(),
            SizedBox(
              height:50
            ),
            textFieldWidget("User Name", "Ranita Dey", _username, false),
            SizedBox(height: 15,),
            textFieldWidget("Address", 'User Address', _address, false),
            SizedBox(height: 15,),
            textFieldWidget("Total Time Spent", '300 minute', _address, false),
            SizedBox(height: 15,),
            textFieldWidget("Total Price Paid", '200', _address, false),
            
           
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
              color: Colors.blue[900],
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
                Text("User Profile",style: CustomFonts.medium(20, Colors.white),),
                Container(
                  width: 45,
                  height: 30,
                )
              ],
            ),
          );
  }

  Widget avatar(){
    return Container(
              height:200,
              width: width,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue[900],
                  ),
                  SizedBox(height: 20,),
                  Text("Ronita Dey",style: CustomFonts.medium(17, Colors.black),),
                  Text("info@ronitadey.com",style: CustomFonts.medium(17, Colors.black),),
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

}