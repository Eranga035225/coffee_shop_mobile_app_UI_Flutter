import 'package:coffee_shop_app/components/custom_button.dart';
import 'package:coffee_shop_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/coffee3.jpg',height: size.height * 0.6, width: size.width, fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical : 12),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Fall in Love with Coffee in Blissfull Delight!', 
                      style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                        text: 'Get Started',
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                      
                      ),
                    )
                  ],
                ),
              ),
            )


          )
        ]
      )



    );
  }
}

