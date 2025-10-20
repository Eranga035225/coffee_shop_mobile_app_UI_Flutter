import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height:400,
          child: Stack(

            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: 
                  [
                    Colors.grey.shade900,
                    Colors.black.withAlpha(240)
                  ])
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: 
                      DecorationImage(
                        image: AssetImage("assets/images/banner2.png"),
                        fit: BoxFit.cover
                  
                    )
                    )
                  
                  
                  
                    ),
                ),
              )
              
            ],

          )

          
          
          
          
          
          
          
          )







      ],)





    );
  }
}