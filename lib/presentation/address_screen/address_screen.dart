import 'package:e_commerce_app/presentation/confirm_screen/confirm_screen.dart';
import 'package:flutter/material.dart';

import 'custom_screen_address.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(child: Image.asset('assets/images/shop.png')),
                AddressScreenAppBar(text1: 'العنوان',),
          
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('الموقع', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1),
                        
                      ),
                      textDirection: TextDirection.rtl,
                      ),
                      hintText: 'مثال: السعودية', 
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(175, 175, 175, 1),
                        
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 23.86,
                          height: 11.99,
                          child: Image.asset('assets/images/arrow1.png'),
                          ),
                      )
                    ),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('المدينة' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1),
                      ),
                      textDirection: TextDirection.rtl,
                      ),
                      hintText: 'مثال: جدة',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(175, 175, 175, 1),
                        
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: 23.86,
                          height: 11.99,
                          child: Image.asset('assets/images/arrow1.png'),
                          ),
                      )
                    ),
                    
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('تفاصيل العنوان-1' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1),
                      ),
                      textDirection: TextDirection.rtl,
                      ),
                      hintText: 'مثال: أسم الحي ',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(175, 175, 175, 1),
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('تفاصيل العنوان-2' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1),
                      ),
                      textDirection: TextDirection.rtl,
                      ),
                      hintText: 'مثال: رقم المبنى ',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(175, 175, 175, 1),
                      ),
                      hintTextDirection: TextDirection.rtl,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )
                    ),
                    
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                                      
                      Text('تعيين كعنواني الافتراضي' , style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(72, 72, 72, 1),
                      ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Checkbox(
                        activeColor: Color(0xff0E34C1),
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                        });
                      },
                      ),
                  ],
                ),
                SizedBox(
                  height: 60,
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
                    onPressed: (){
                  Navigator.push(context,
      MaterialPageRoute(builder: (context) => ConfirmScreen()));
                    }, child: Text('حفظ' , style: TextStyle(
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
      ),
    );
  }
}