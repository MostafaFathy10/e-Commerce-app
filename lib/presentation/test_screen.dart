import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: DottedBorder(
            color: Color.fromRGBO(217, 217, 217, 1),
            strokeWidth: 2,
            radius: Radius.circular(16),
            dashPattern: [5 , 5],
            
            child: Container(
              width: 393,
              height: 226,
              
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                    child: Row(
                      children: [
                        Text('20'),
                         Spacer(),
                        Text('ضريبة'),
                       
                        
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                    child: Row(
                      children: [
                        Text('10'),
                        Spacer(),
                        Text('الشحن'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                    child: Row(
                      children: [
                        Text('930'),
                        Spacer(),
                        Text('مجموع السلة'),
                      ],
                    ),
                  ),
                  
          SizedBox(
            height: 10,
          ),
                  
                  Container(margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 370,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 52, 193, 1),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(14, 52, 193, 1)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {} , child: Text('تأكيد الطلب'),
                      
                    ),
                  )
                ],
              )
            ),
          ),
        ),


        
      ),
    );
  }
}