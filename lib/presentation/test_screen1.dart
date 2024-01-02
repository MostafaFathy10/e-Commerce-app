import 'package:flutter/material.dart';

class TestScreen1 extends StatelessWidget {
  const TestScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Image.asset('assets/images/kid.png'),
        SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                       Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(14, 52, 193, 1),
                            Colors.blue,
                          ]
                        )
                        
                      ),
                      child: Container(
                        width: 28,
                        height: 35.97,
                        child: Center(child: Image.asset('assets/images/lock.png')),
                        ),
                    ),
                      SizedBox(
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('450' , style: TextStyle(
                          color: Color.fromRGBO(31, 67, 244, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        Text('سويتر صوف' , style: TextStyle(
                          color: Color.fromRGBO(138, 138, 138, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ],
                    ),
                    
                   
                    
                  ],
                ),
      ],
      ),
    );
  }
}