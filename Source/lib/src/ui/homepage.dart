import 'package:flutter/material.dart';
import 'package:horoscope/src/fonts/fonts.dart';
import 'package:horoscope/src/ui/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double width = 0.0;
  double height = 0.0;
  double statusBar = 0.0;
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    statusBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children:[
          SizedBox(height: statusBar,),
          navbar(),
          stack(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                 stack2(),
                 stack3()
                ],
              ),
            ),
          ),
          bottomNavbar()
         
        ]
      ),
    );
  }

  Widget navbar(){
    return Container(
            width: width,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/Icons/1.png'),
                    ),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/Icons/2.png'),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Icons/3.png'),
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 13),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/Icons/4.png'),
                    ),
                )
              ],
            ),
          );
  }



  Widget stack(){
    return Container(
            width: width,
            height: 125,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width:width,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 31, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(200))
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: width,
                    height: 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        links("assets/Icons/5.png", "Daily Horoscope", Colors.orange),
                        links("assets/Icons/6.png", "Free    Kundli", Colors.greenAccent[400]!),
                        links("assets/Icons/7.png", "Horoscope Matching", Colors.pink[500]!),
                        links("assets/Icons/8.png", "Astrology Blog", Colors.yellow[500]!)
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }

  Widget stack2(){
    return Container(
              width: width,
              height: 185,
              child: Stack(
                children: [
              Container(
                width: width,
                height: 245,
                color: Color.fromRGBO(0, 0, 31, 1),
              ),
              Align(
                alignment:Alignment.topCenter,
                child: Container(
                  width: width/1.2,
                  height: 145,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      PageView(
                        children:[
                          Container(
                            width: width/1.2,
                           height: 145,
                           child: Image.asset('assets/Images/1.jpg',fit: BoxFit.fill,),
                          ),
                          Container(
                            width: width/1.2,
                           height: 145,
                           child: Image.asset('assets/Images/1.jpg',fit: BoxFit.fill,),
                          ),
                          Container(
                            width: width/1.2,
                           height: 145,
                           child: Image.asset('assets/Images/1.jpg',fit: BoxFit.fill,),
                          ),
                        ]
                      ),
                      Container(
                         width: width/1.2,
                           height: 145,
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Know you Future!",style: CustomFonts.medium(25, Colors.white),),
                              Text("Solve your personl problems",style: CustomFonts.regular(15, Colors.greenAccent[400]!),),
                              SizedBox(height: 8,),
                              Text("Solve your personl problems ",style: CustomFonts.regular(13, Colors.white),),
                              Text("Solve your personl pr",style: CustomFonts.regular(13, Colors.white),),
                              SizedBox(height: 4,),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(child: Text("BOOK NOW",style: CustomFonts.regular(12, Colors.black),),),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),           
                ],
              ),
            );
  }


  Widget stack3(){
    return Stack(
                   children: [
                     Container(
                       width: width,
                       height: 120,
                       color: Color.fromRGBO(0, 0, 31, 1),
                     ),
                     Align(
                       alignment: Alignment.topCenter,
                       child: Container(
                         height: 450,
                         width: width,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                cards('assets/Images/2.png',
                                "Chat with Astrologer",
                                "Starting from 5/min only (starting from first 5 minute)"
                                ),
                                cards('assets/Images/3.png',
                                "Talk to Astrologer",
                                "Starting from 5/min only (starting from first 5 minute)"
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                cards('assets/Images/4.png',
                                "Get Detailed Report",
                                "Starting from 5/min only (starting from first 5 minute)"
                                ),
                                cards('assets/Images/5.png',
                                "Shop at Astro Mall",
                                "Starting from 5/min only (starting from first 5 minute)"
                                ),
                              ],
                            )
                           ],
                         ),
                       ),
                     )
                   ],
                 );
  }


  Widget links(String image, String text,Color color){
    return Container(
                          height: 95,
                          width: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Image.asset(image,fit: BoxFit.fill,),
                                ),
                              ),
                              Text(text,
                              textAlign: TextAlign.center,
                              style: CustomFonts.medium(14, Colors.white),)
                            ],
                          ),
                        );
  }


  Widget cards(String image,String heading,String text){
    return Container( 
                            height: 200,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 1,color: Colors.grey[400]!),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          width: 100,
                                          height: 80,
                                          child: Image.asset(image),
                                        ),
                                      ),
                                      Text(heading,style: CustomFonts.regular(15, Colors.blue[800]!),),
                                      Text(text,
                                      textAlign: TextAlign.center,
                                      style: CustomFonts.regular(12, Colors.black),),
                                      
                                    ],
                                  )
                                );
  }


  Widget bottomNavbar(){
    return Container(
            height: 80,
            width: width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 30, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  bottomMenuButton('assets/Icons/1.png', Colors.amber[200]!),
                  bottomMenuButton('assets/Icons/9.png', Colors.lightBlueAccent[700]!),
                  bottomMenuButton('assets/Icons/10.png',Colors.lightBlueAccent[700]!),
                  bottomMenuButton('assets/Icons/11.png',Colors.lightBlueAccent[700]!),
                ],
              ),
            ),
            );
  }


 Widget bottomMenuButton(String image,Color color){
   return Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(image),
                    ),
                  );
 }

}