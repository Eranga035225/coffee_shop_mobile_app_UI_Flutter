import 'package:coffee_shop_app/components/custom_button.dart';
import 'package:coffee_shop_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class ItemViewScreen extends StatefulWidget {
  const ItemViewScreen({super.key});

  @override
  State<ItemViewScreen> createState() => _ItemViewScreenState();
}

class _ItemViewScreenState extends State<ItemViewScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Price', style: TextStyle(color: Colors.grey.shade800)),
                  Text('\$4.53', style: TextStyle(color: CustomColors.primaryColor, fontSize: 16, fontWeight: FontWeight.bold),)
            
              ],),
              Spacer(),
        
              SizedBox(
                width: size.width * 0.7,
                child: CustomButton(text: 'Buy Now', onTap: (){}))
        
            
            ],),
          ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: Text('Item Details', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.favorite_outline_rounded),
          )

        ]

        
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 12
          ),
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/latte.jpg'), fit: BoxFit.cover),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)
            ),
          ),

          SizedBox(height: 12),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Caffe Latte', style: TextStyle(fontWeight: FontWeight.bold, fontSize:25 , color: Colors.grey.shade800)),
                  Text('Íce/Hot', style:TextStyle( fontSize: 16, color: Colors.grey.shade600),),
                  Row(children: [
                    Icon(Icons.star_rounded, color: Colors.amber,),
                    Text('4.8', style:TextStyle(fontWeight: FontWeight.w600)),
                    Text('(251)', style: TextStyle(color: Colors.grey.shade600))

                  ],)
                ],
              ),
              Spacer(),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.delivery_dining_rounded, color: CustomColors.primaryColor, size: 30)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.dining_outlined, color: CustomColors.primaryColor, size: 30)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Icon(Icons.phone_android_outlined, color: CustomColors.primaryColor, size: 30)
                  ),
                )

              ],)
            ],
          ),
          SizedBox(height: 20),
          Text('Description', style:TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          SizedBox(height:8),
          RichText(text: TextSpan(
            text: 'A cafe latte is a creamy coffee drink made with espresso and steamed milk, topped with a light layer of froth, resulting in a smooth and balanced flavor...',
            style: TextStyle(color: Colors.grey.shade600,),
            children: [
              TextSpan(text: 'Read More', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold))
            ]

          ),
          
          ),


          SizedBox(height:25),
          Text('Size', style: TextStyle(color:Colors.grey.shade900, fontSize: 16, fontWeight: FontWeight.w600)),
          SizedBox(height:16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical:15),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey
                  )
              
              
                ),
                child: Text('S', style:TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical:15),
                
                decoration: BoxDecoration(
                  color: Colors.brown.shade50,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: CustomColors.primaryColor
                  )
              
              
                ),
                child: Text('M', style:TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical:15),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey
                  )
              
              
                ),
                child: Text('L', style:TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          )
         
        ],),
      )















    );
  }
}
