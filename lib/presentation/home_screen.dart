import 'package:e_commerce_app/presentation/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/presentation/custom_screen_home.dart';
import 'package:e_commerce_app/presentation/product_screen.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      'اكسسوارات',
      'حقائب',
      'أحذية',
      'ملابس',
      'الأحدث',
    ];
      
    List imageCategories = [
      'assets/images/kid.png',
      'assets/images/woman.png',
      'assets/images/child.png',
      'assets/images/man.png',
    ];  
      
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/images/shop.png'),
                  ),
                  
                Container(
                  width: 388,
                  height: 208,
                  child: Image.asset('assets/images/cate.png')
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: categories.length,
                        itemBuilder: (BuildContext context, index) {
                        return CustomWidgetColumn(categories: categories[index],);
                        
                      }
                      ),
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Color.fromRGBO(72, 72, 72, 1),
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
          ),
                  SizedBox(
                    height: 350,
                    child: GridView.builder(
                      shrinkWrap: true,
                      
                      itemCount: imageCategories.length,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4 / 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ), itemBuilder: (BuildContext context, index) {
                      return CustomWidgetContainer(imageCategories: imageCategories[index],);
                    }),
                  ),
                  
                 
                  
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(selectedFontSize: 15,
                
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

class CustomWidgetContainer extends StatelessWidget {
  const CustomWidgetContainer({
    super.key, required this.imageCategories,
  });
final String imageCategories;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2 , color: Color(0xffF5F5F5)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5 ),
        child: Column(
            children: [
            Image.asset(imageCategories),
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
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductScreen()));
                            },
                            child: Container(
                              width: 28,
                              height: 35.97,
                              child: Center(child: Image.asset('assets/images/lock.png')),
                              ),
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
      ),
    );
    
  }
}

class CustomWidgetColumn extends StatelessWidget {
  const CustomWidgetColumn({
    super.key, required this.categories,  
  });

final String categories;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          Text(categories , style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            
          ),
          textDirection: TextDirection.ltr,
          ),
          
        ],
      ),
    );
  }
}