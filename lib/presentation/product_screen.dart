import 'package:e_commerce_app/Business%20logic/cubit/shop_cubit.dart';
import 'package:e_commerce_app/Business%20logic/cubit/shop_state.dart';
import 'package:e_commerce_app/presentation/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => ShopCubit()..getShop(),
        child: BlocConsumer<ShopCubit  , ShopState>(
          listener: (context, state) {
            if(state is ShopIsLoading){
              Center(
                child: CircularProgressIndicator(),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(child: Image.asset('assets/images/shop.png')),
                  Stack(
                    children: [
                      Image.network(ShopCubit().get(context).shopModel!.image!.toString()),
                      
                      // Image.asset(ShopCubit.get(context).shopModel!.image!),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
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
                      ),
                      Positioned(
                        // left: 200,
                        bottom: 30,
                        right: 30,
                        child: Container(
                          width: 78,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Center(
                            child: Text(
                              'شتاء 2024',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        state is ShopIsLoading ? 
                        Center(
                          child: CircularProgressIndicator(),
                        ) :
                        Text(ShopCubit.get(context).shopModel!.title!),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            state is ShopIsLoading ? 
                            Center(
                              child: CircularProgressIndicator(),
                            ) :
                            Text(ShopCubit.get(context).shopModel!.rating!.toString()),
                            Text(ShopCubit.get(context).shopModel!.rating!.toString()),
                            Image.asset(ShopCubit.get(context).shopModel!.image!.toString()),
                            Spacer(),
                            Text(ShopCubit.get(context).shopModel!.price!.toString()),
                          ],
                        ),
                        Text(ShopCubit.get(context).shopModel!.description!,
                          
                          maxLines: 2,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          'الألوان',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(138, 138, 138, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Image.asset('assets/images/Ellipse 16097.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/Ellipse 16096.png'),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/Ellipse 16095.png'),
                            ],
                          ),
                        ),
                        Text('المقاسات'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 27.2,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(175, 175, 175, 1),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'assets/images/L.png',
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 27.2,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(175, 175, 175, 1),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'assets/images/M.png',
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 27.2,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(6, 27, 130, 1),
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Image.asset(
                                'assets/images/S.png',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            width: 370,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(14, 52, 193, 1),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CartScreen()));
                                  },
                                  child: Container(
                                    child: Text(
                                      'إضافة إلى السله',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  child:
                                      Image.asset('assets/images/Vector.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          
          
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
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
    );
  }
}
