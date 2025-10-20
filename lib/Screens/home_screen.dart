import 'package:coffee_shop_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height:400,
          child: Stack(

            children: [
              Container(
                padding:EdgeInsets.symmetric(horizontal: 25 ),
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  // gradient: LinearGradient(colors: 
                  // [
                  //   Colors.grey.shade900,
                  //   Colors.black.withAlpha(240)
                  // ])
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(height: 30),
                    Text("Location", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    Row(children: [
                      Text('Colombo, Sri Lanka', style: TextStyle(color: Colors.grey.shade200, fontSize: 18),),
                      Icon(Icons.arrow_drop_down_rounded, color: Colors.grey.shade200,)
                    

                    ],),
                    SizedBox(height: 33),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        width: size.width * 0.68,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(children: [
                          Icon(Icons.search_rounded, color: Colors.white),
                          SizedBox(width: 10),
                          Text('Search Coffee', style: TextStyle(color: Colors.grey, fontSize: 16),)
                        ],)

                      ),

                      Spacer(),

                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: CustomColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)
                      
                        ),
                        child:
                        Icon(Icons.tune_rounded,
                        color: Colors.white, size: 30)
                      
                      
                      )

                    ],)

                    
                  ],),
                )
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal:18, vertical:10),
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey,
                      image: 
                      DecorationImage(
                        
                        image: AssetImage("assets/images/banner2.png"),
                        fit: BoxFit.cover
                  
                    )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:4),
                       
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFED5151),
                          borderRadius: BorderRadius.circular(10)


                        ),
                         child: Text('Promo', style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),

                      SizedBox(height: 10,),

                      Text("Buy one get\none FREE", style:TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),

                      



                    ],)



                    )
                  
                  
                  
                    ),
                ),
              
              
            ],

          )

          
          
          
          
          
          
          
          )







      ],)





    );
  }
}