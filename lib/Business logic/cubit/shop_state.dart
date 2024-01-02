import 'package:flutter/material.dart';

@immutable
sealed class ShopState {}
class ShopInitial extends ShopState{}
class ShopIsLoading extends ShopState{}
class ShopIsSuccess extends ShopState{}
class ShopIsError extends ShopState{}