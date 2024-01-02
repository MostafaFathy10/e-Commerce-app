import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffBCC5E4),
                            borderRadius: BorderRadius.circular(11)
        
                        ),
                        child: Image.asset('assets/images/notification.png'),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/search.png'
                              ),
                            ),
        
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Color(0xffD9D9D9),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Color(0xff0E34C1),
                              ),
                            ),
                            hintText: " ابحث عن ما تريد",
                          ),
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }
}