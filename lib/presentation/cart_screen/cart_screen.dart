import 'package:dotted_border/dotted_border.dart';
import 'package:e_commerce_app/presentation/address_screen/address_screen.dart';
import 'package:e_commerce_app/presentation/cart_screen/cart_screen_appbar.dart';
import 'package:e_commerce_app/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  
  bool isChecked = false;
  int number = 0;

  void incrementN(){
    setState(() {
      number++;
    });
  }
  void decrementN(){
    setState(() {
      if(number >= 1 ){
        number--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    List clothesOrder = [
      'سويتر صوف',
      'سويتر صوف-أطفال',
    ];

    List imagesOrder = [
      'assets/images/man.png',
      'assets/images/Mask group.png',
    ];
    

    
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              
              children: [
                Center(child: Image.asset('assets/images/shop.png')),
                
                CartScreenAppBar(text: 'السله',),
               SizedBox(
                height: 300,
                 child: ListView.builder(
                  itemCount: clothesOrder.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                   return Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10),
                     child: CustomWidgetRow(clothesOrder: clothesOrder[index], imagesOrder: imagesOrder[index],
                   ),
                   );
                 }),
               ),
               SizedBox(
                height: 10,
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('الدفع عند الاستلام' , style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(72, 72, 72, 1),
                      
                    ),
                    textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Checkbox(
                          activeColor: Color(0xff0E34C1),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                  Padding(
            padding: const EdgeInsets.all(10),
            child: DottedBorder(
              color: Color.fromRGBO(217, 217, 217, 1),
              strokeWidth: 2,
              radius: Radius.circular(16),
              dashPattern: [5 , 5],
              
              child: Container(
                width: 393,
                height: 250,
                
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                      child: Row(
                        children: [
                          Text('20' , style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                          ),
                           Spacer(),
                          Text('ضريبة'  , style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                          ),
                         
                          
                          
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                      child: Row(
                        children: [
                          Text('10' , style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                          ),
                          Spacer(),
                          Text('الشحن' , style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 12),
                      child: Row(
                        children: [
                          Text('930' , style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(6, 27, 130, 1),
                          ),
                          ),
                          Spacer(),
                          Text('مجموع السلة' , style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(93, 93, 93, 1),
                          ),
                          ),
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
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressScreen()));
                        } , child: Text('تأكيد الطلب' , style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),),
                        
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        
                      ],
                    ),
                  ),
        ),
               bottomNavigationBar: BottomNavigationBar(
                
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.grey,
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/Vector (1).png'),
                        
                      ),
                    ),
                    label: 'Home',
                    ),

                    BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/Vector (2).png'),
                      ),
                    ),
                    label: 'Cart',
                    ),

                    BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/01 align center.png'),
                    ),
                    label: 'Favorites',
                    ),

                    BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/Group 2590.png'),
                    ),
                    label: 'Profile',
                    ),
                ],
                currentIndex: 0,
               ), 
               
            
          ),
        );
      
    
  }
}

class CustomWidgetRow extends StatefulWidget {
  const CustomWidgetRow({
    super.key, required this.clothesOrder, required this.imagesOrder
  });
final String clothesOrder;
final String imagesOrder;

  @override
  State<CustomWidgetRow> createState() => _CustomWidgetRowState();
}

class _CustomWidgetRowState extends State<CustomWidgetRow> {
  int number = 0;
  void incrementN(){
    number++;

  }
  void decrementN(){
    if(number >= 1){
      number--;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          Column(
            children: [
              Row(
                children: [
                  // Image.asset('assets/images/exit.png'),
                  SizedBox(
                    width: 100,
                  ),
                  Text(widget.clothesOrder),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 27.2,
                    height: 32,
                    decoration: BoxDecoration(
                    color: Color.fromRGBO(6, 27, 130, 1),
                    borderRadius: BorderRadius.circular(60),
                    
                    ),
                    
                    child:Image.asset('assets/images/S.png') ,
                    ) ,
                 SizedBox(
                  width: 5,
                 ),
                  Text('المقاس'),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/Group 2597.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('الألوان'),
                  
                   

                                ],
              ),

               Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                height: 34,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(138, 138, 138, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/images/minus.png' , color: Colors.white,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('1'),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  incrementN();
                },
                child: Container(
                  width: 35,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(14, 52, 193, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(onPressed: incrementN, icon: Icon(Icons.add),)
                     
                    
                    ),
              ),
                
                SizedBox(
                  width: 10,
                ),
                Text('450'),
            ],
          ),

             

            ],
          ),

         Image.asset(widget.imagesOrder),
          
        ],
      ),
    );
  }
}