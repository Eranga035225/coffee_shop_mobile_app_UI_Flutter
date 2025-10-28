import 'package:coffee_shop_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import '../data/demo_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(children: [
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
        
            
            
            
            
            
            
            
            ),
        
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                
              
                children: [
                  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: DemoData.coffeeCategories.map(
                    (category)=>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        
                        decoration: BoxDecoration(
                          color: DemoData.coffeeCategories.indexOf(category) == 0 ? CustomColors.primaryColor : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text(category, style: 
                        TextStyle(
                          color: DemoData.coffeeCategories.indexOf(category) == 0 ? Colors.white : Colors.grey.shade900,
                          fontWeight: FontWeight.bold
                      
                      
                        )),
                      )
                    )
                
                  ).toList(),
                   
                ),
              ),
                      
              SizedBox(height:15),
                      
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(

                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.7),
                  itemCount: DemoData.products.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context, index) {
                    final product = DemoData.products[index];
                    return Container(
                      padding: EdgeInsets.all(6.0),
                      // color: Colors.white,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:130,
                                decoration: BoxDecoration(
                                  // color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage(product.image),
                                    fit: BoxFit.cover
                                    
                                  ),
                                  borderRadius: BorderRadius.circular(20)

                                ),
                                
                              ),
                              SizedBox(height:5),
                              Text(product.name, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Text(product.category, style:TextStyle(color:Colors.grey.shade700)),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children : [
                                Text('\$ ${product.price}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                Container(
                                  width:35,
                                  height:35,
                                  decoration: BoxDecoration(
                                    color: CustomColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10)

                                  ),
                                  child: Icon(Icons.add, color: Colors.white,),
                                )
                              ],)
                            ],



                        )
                    );
                  },
                        
                        
                        
                ),
              ),
                      
              
                ],
              ),
            )
            
        
        
        
        
        
        
        ],),
      )





    );
  }
}