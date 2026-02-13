import 'package:flutter/material.dart';

class CafeUiApp extends StatelessWidget {
  const CafeUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          //main image
          Stack(
            children: [
              //main img
              Image(
                fit: .fill,
                height: 400,
                width: 800,
                image: AssetImage("images/chocoC.jpg"),
              ),
              //container-450 kcal
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  width: 80,
                  height: 40,
                  margin: .only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Positioned(
                    bottom: 10,
                    left: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "450 kcal",
                        textAlign: .center,
                        style: TextStyle(fontSize: 16,fontWeight: .bold),
                      ),
                    ),
                  ),
                ),
              ),
              //back button
              Positioned(
                top: 40,
                left: 20,
                child: Container(
                  alignment: .center,
                  height: 10,
                  width: 10,
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ),
              //favorite icon
              Positioned(
                top: 40,
                right: 20,
                child: Container(
                  alignment: .center,
                  height: 20,
                  width: 30,
                  child: Icon(Icons.favorite,size: 30,color: Colors.deepOrange),
                ),
              )
            ],
          ),
          //Main Text Area
          Column(
            children: [
              SizedBox(height: 20),
              //Main Text
               Row(
                 mainAxisAlignment: .start,
                 children: [
                   SizedBox(width: 20,),
                   //Text
                   Text.rich(
                     textAlign: .start,
                      TextSpan(
                        children: [
                          TextSpan(text: "Choco croissant,",style: TextStyle(fontSize: 35,fontWeight: .bold)),
                          TextSpan(text: "110g",style: TextStyle(color:Colors.grey,fontSize: 35,fontWeight: .bold)),
                        ]
                      ),
                   ),
                 ],
               ),
              //sub text
              Container(
                width: 400,
                padding: .only(left: 10,right: 10),
                child: Text(
                  "Ingredients: chicken egg,flour,milk 3.2%,butter,water,dark chocolate 54-55%,melenga,white sugar,cocoa powder,salt,vanillin.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .bold
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 5,),
          //Text Area -Add to order
          Column(
            children: [
              //Text container-Add to order
              Container(
                alignment: .centerLeft,
                padding: .only(left: 16,top: 15),
                child: Text("Add to order",
                  style: TextStyle(
                      fontSize: 24,
                    fontWeight: .w500,
                  ),
                ),
              ),
              Row(
                children: [
                  //card1
                  Padding(
                    padding: const EdgeInsets.all(5),
                    //Cards
                    child: Container(
                      child: Column(
                        children: [
                          //img
                          Container(
                            height: 120,
                            width: 120,
                            margin: .only(left: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/latte.jpg"),fit: .cover),
                                border: .all(color: Colors.grey.shade400),
                                borderRadius: .circular(10)
                            ),
                            //Add icon
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    alignment: .center,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: .circular(20),
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //Text-Latte
                          Container(
                            padding: .only(right: 70,top: 10),
                            child: Text(
                                "Latte",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: .bold
                              ),
                            ),
                          ),
                          //price
                          Container(
                            padding: .only(right: 70),
                            child: Text(
                                "\$2.00",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 14,
                                fontWeight: .bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //card2
                  Padding(
                    padding: const EdgeInsets.all(5),
                    //Card
                    child: Container(
                      child: Column(
                        children: [
                          //img
                          Container(
                            height: 120,
                            width: 120,
                            margin: .only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("images/nordic_tea.jpg"),fit: .contain),
                                border: .all(color: Colors.grey.shade400,width: 1.5),
                                borderRadius: .circular(10)
                            ),
                            //Add icon
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    alignment: .center,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: .circular(20),
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //Text-Nordic tea
                          Container(
                            padding: .only(right: 30,top: 10),
                            child: Text(
                              "Nordic tea",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: .bold
                              ),
                            ),
                          ),
                          //price
                          Container(
                            padding: .only(right: 70),
                            child: Text(
                              "\$1.80",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 14,
                                  fontWeight: .bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //card3
                  Padding(
                    padding: const EdgeInsets.all(5),
                    //Card
                    child: Container(
                      child: Column(
                        children: [
                          //img
                          Container(
                            height: 120,
                            width: 120,
                            margin: .only(left: 5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("images/matcha.jpg"),fit: .contain),
                                border: .all(color: Colors.grey.shade400),
                                borderRadius: .circular(10)
                            ),
                            //Add icon
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    alignment: .center,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: .circular(20),
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //Text-Matcha latte
                          Container(
                            padding: .only(right: 5,top: 10),
                            child: Text(
                              "Matcha Latte",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: .bold
                              ),
                            ),
                          ),
                          //price
                          Container(
                            padding: .only(right: 70),
                            child: Text(
                              "\$2.00",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 14,
                                  fontWeight: .bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          // SizedBox(height: 5,),
          //Button
          Column(
            crossAxisAlignment: .stretch,
            children: [
              Container(
                padding: .all(15),
                margin: .all(20),
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade400,
                  borderRadius: .circular(10),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    //total price
                    Text("\$5.90",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),),
                    SizedBox(width: 25,),
                    //add to cart
                    Text("Add to cart",style: TextStyle(
                      fontSize: 16,
                      fontWeight: .bold,
                      color: Colors.white,

                    ),),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
