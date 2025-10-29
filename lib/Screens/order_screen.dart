import 'package:coffee_shop_app/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(

      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: Text('Order', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
       bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,

              
              children: [
                ListTile(
                  leading: Icon(Icons.wallet, color: CustomColors.primaryColor),
                  title: Text('Cash/Wallet', style:TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800)),
                  subtitle: Text('\$5.53', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
                CustomButton(text: 'Order', onTap: (){}),


            ],)
          ),
        ),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl(
                padding: EdgeInsets.all(5.0),
                groupValue: 0,
                thumbColor: CustomColors.primaryColor,
                backgroundColor: Colors.grey.shade200,
                
                children: {
                0: Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 12.0), child: Text('Deliver', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)),
                1: Text('Pickup', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              }, 
                onValueChanged: (value){
              
              },),
            ),
            SizedBox(height:20),
            Text('Delivery Address', style: TextStyle(color: Colors.grey.shade900, fontSize: 18, fontWeight: FontWeight.w600),),
            SizedBox(height:12),
            Text('Eranga Kavisanka', style: TextStyle(color: Colors.grey.shade900, fontSize: 15, fontWeight: FontWeight.w600),),
            Text('No 15/A, Kandy, Sri Lanka', style: TextStyle(color: Colors.grey.shade600),),
            Row(children: [
              OutlinedButton.icon(onPressed: (){},
                label: Text('Edit Address', style: TextStyle(color: Colors.grey.shade800),),
                icon: Icon(Icons.edit, color: Colors.grey.shade800,),
            
              ),
              SizedBox(width: 8,),
              OutlinedButton.icon(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white)
        
                ),
                label: Text('Add Note', style: TextStyle(color: Colors.grey.shade800),),
                icon: Icon(Icons.note_add, color: Colors.grey.shade800,),
            
              ),
        
        
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Divider(color: Colors.grey.shade300),
            ),

            ListTile(
              leading: Container(
                width: 60,
                height: 60,
                
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage('assets/images/espresso.jpg'), fit: BoxFit.cover)


                ),
              ),
              title: Text('Hot Espresso', style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold)),
              subtitle: Text('Deep Foam'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius:21,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                     
                      radius: 20,
                      child: Icon(Icons.remove),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1', style:TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    radius:21,

                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add)
                    
                    ),
                  )

                
              ],)




            ),
            SizedBox(height:20),
            Container(
              padding: EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),

             

              ),
              child: ListTile(
                leading: Icon(Icons.discount_rounded, color: CustomColors.primaryColor,),
                title: Text('1 Discount is Applied', style: TextStyle(fontWeight: FontWeight.w600)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
             SizedBox(height:20),
             Text('Payment Summary', style: TextStyle(color: Colors.grey.shade900, fontSize: 18, fontWeight: FontWeight.w600),),
             SizedBox(height:10),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Price'),
              Text('\$ 4.53', style: TextStyle(fontWeight: FontWeight.bold),),

             ],),
             SizedBox(height:6),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Delivery Fee'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('\$ 2.0', style:TextStyle(decoration: TextDecoration.lineThrough),),
                  SizedBox(width:5),
                  Text('\$ 1.0', style:TextStyle(fontWeight: FontWeight.bold))
                ],
              )
              
             ],),
             





        
        
          ],
        
        
        
        ),
      )
      




    );
  }
}