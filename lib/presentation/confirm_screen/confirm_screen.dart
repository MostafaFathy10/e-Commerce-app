import 'package:e_commerce_app/presentation/confirm_screen/custom_screen_confirm.dart';
import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, 
            children: [
              Center(child: Image.asset('assets/images/shop.png')
              ),
                ConfirmScreenAppBar(text2: 'إتمام الطلب'),
                 SizedBox(
                  height: 10,
                 ),
                Container(
                  width: 390,
                  height: 107,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('العنوان-1' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(93, 93, 93, 1),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('السعودية, المدينة,حي العيون - منزل رقم9 ' , style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(138, 138, 138, 1),
                              ),
                              textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 390,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                    child: Row(
                      children: [
                        
                        Text('930', style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(6, 27, 130, 1),
                        ),
                        ),
                        Spacer(),
                        Text('مجموع السلة', style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(93, 93, 93, 1),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('الدفع عند الاستلام', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(72, 72, 72, 1),
                ),
                textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Text('يصل بعد من 2 إلى 4 أيام عمل' , style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(93, 93, 93, 1),
                  ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
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
                    onPressed: () {} , child: Text('إتمام الطلب' , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    
                  ),
                  ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}