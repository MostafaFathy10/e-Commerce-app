import 'package:e_commerce_app/presentation/cart_screen/cart_screen.dart';
import 'package:flutter/material.dart';

class AddressScreenAppBar extends StatelessWidget {
  const AddressScreenAppBar({super.key, required this.text1});
final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    InkWell(
                      onTap: () {
                        Navigator.pop(context , MaterialPageRoute(builder: (context)=> CartScreen()));
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(188, 197, 228, 1),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Image.asset('assets/images/arrow.png'),
                        ),
                    ),
                    Spacer(),
                    Text('العنوان' , textDirection: TextDirection.rtl, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                      
                  ],
                ),
    );
  }
}