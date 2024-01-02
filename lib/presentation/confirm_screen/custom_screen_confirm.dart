import 'package:e_commerce_app/presentation/address_screen/address_screen.dart';
import 'package:flutter/material.dart';

class ConfirmScreenAppBar extends StatefulWidget {
  const ConfirmScreenAppBar({super.key, required this.text2});
final String text2;

  @override
  State<ConfirmScreenAppBar> createState() => _ConfirmScreenAppBarState();
}

class _ConfirmScreenAppBarState extends State<ConfirmScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap:() {
                         Navigator.pop(context,
      MaterialPageRoute(builder: (context) => AddressScreen()));
                      } ,
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
                    Text('إتمام الطلب', textDirection: TextDirection.rtl, style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                      
                  ],
                ),
    );
  }
}