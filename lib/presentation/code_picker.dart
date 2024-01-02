import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CodePicker extends StatefulWidget {
  const CodePicker({super.key});

  @override
  State<CodePicker> createState() => _CodePickerState();
}

class _CodePickerState extends State<CodePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: IntlPhoneField(
          decoration: InputDecoration(
          labelText: 'رقم الجوال',
          hintText: '0111',
          border: OutlineInputBorder(
              borderSide: BorderSide(),
          ),
          ),
          initialCountryCode: 'IN',
          onChanged: (phone) {
          print(phone.completeNumber);
          },
      ),
        ),
      ),
    );
  }
}