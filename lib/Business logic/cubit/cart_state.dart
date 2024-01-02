import 'package:flutter/material.dart';

@ immutable
sealed class CartState{}
class CartInitial extends CartState{}
class CartIsLoading extends CartState{}
class CartIsSuccess extends CartState{}
class CartIsError extends CartState{}