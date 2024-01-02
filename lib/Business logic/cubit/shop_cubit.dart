 import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_commerce_app/Business%20logic/cubit/shop_state.dart';
import 'package:e_commerce_app/data/shop_model.dart';
import 'package:e_commerce_app/presentation/e_commerce_login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopState> {
  ShopCubit() : super(ShopInitial());
  static ShopCubit get(context)=> BlocProvider.of(context);

  Dio dio = Dio();
  ShopModel? shopModel;
  void getShop() async {
    var dio = Dio();
    emit(ShopIsLoading());
    var response = await dio.request(
      'https://fakestoreapi.com/products',
      options: Options(
        method: 'GET',
      )
      );
      shopModel = ShopModel.fromJson(response.data);
      if (response.statusCode == 200) {
        emit(ShopIsSuccess());
        print(response.data);
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
  emit(ShopIsError());
}
  }
}