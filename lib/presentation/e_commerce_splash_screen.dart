import 'package:e_commerce_app/presentation/e_commerce_login_page.dart';
import 'package:flutter/material.dart';

class CommerceSplashScreen extends StatefulWidget {
  const CommerceSplashScreen({super.key});

  @override
  State<CommerceSplashScreen> createState() => _CommerceSplashScreenState();
}

class _CommerceSplashScreenState extends State<CommerceSplashScreen> {
  void initState() {
    Future.delayed(
      Duration(seconds: 10),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => CommerceLoginPage())));
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Container(
            width: 803.01,
            height: 893.37,
            child: Image.asset('assets/images/shoppingbag.png')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Positioned(
                left: 0,
                right: 0,
                
                
                child: Center(
                  child: Container(
                    width: 127,
                    height: 119.73,
                      
                    child: Image.asset('assets/images/eshop.png' , fit: BoxFit.cover,)
                    ),
                ),
              ),
          
               
            ],
          ),
        ],
      ),
    );
  }
}