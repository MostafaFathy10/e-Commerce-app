import 'package:e_commerce_app/custom_snack_bar.dart';
import 'package:e_commerce_app/presentation/e_commerce_login_page.dart';
import 'package:e_commerce_app/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
Future<void> loginUser() async {
  var FirebaseAuth;
  UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email! , password: password!);
}
class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> formKey = GlobalKey();
String? email;
  String? password;
  String? name;
  int? phoneNumber;
  String? confirmPassword;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 137.76,
            height: 55.76,
            child: Image.asset('assets/images/shop.png'))
        ],
        leading: InkWell(
          onTap: () {
            Navigator.pop(context , MaterialPageRoute(builder: (context)=> CommerceLoginPage()));
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(188, 197, 228, 1),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 4.0,
                  
                ),
              ]
            ),
            child: Image.asset('assets/images/arrow.png'),
          ),
        ),
      ),
         body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.only(right: 20),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('مرحبا' , style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                
              ),
              
              ),
              SizedBox(
                height: 10,
              ),
              Text('انشاء حساب' , style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(93, 93, 93, 1),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: InputDecoration(
                    label: Text('الاسم'),
                    hintText: 'مثال: محمد على',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(175, 175, 175, 1),
                      
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    label: Text('البريد الالكترونى' , style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    hintText: 'email@example.com',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(175, 175, 175, 1),
                      
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                   padding: const EdgeInsets.all(5),
                   child: Center(
              child: IntlPhoneField(
                onTap: () {
                  phoneNumber = value;
                },
              decoration: InputDecoration(
              labelText: 'رقم الجوال', labelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              hintText: '0111',
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5 , color: Colors.white),
                  borderRadius: BorderRadius.circular(11),
              ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
              print(phone.completeNumber);
              },
                 ),
                   ),
                 ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    label: Text('كلمة المرور'),
                    hintText: 'email@example.com',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(175, 175, 175, 1),
                      
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                  decoration: InputDecoration(
                    label: Text('تاكيد كلمة المرور'),
                    hintText: 'email@example.com',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(175, 175, 175, 1),
                      
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    )
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                ),
                width: 370,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(14, 52, 193, 1)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () async {
                    if(formKey.currentState!.validate()){
                      isLoading = true;

                      setState(() {});
                      try{
                        await loginUser();
                        ShowSnackBar(context, 'Account created');
                      }
                    } on FirebaseException catch(ex){
                      if(ex == 'No account created'){
                        ShowSnackBar(context, 'You have no account');
                      }
                    }
                    isLoading = false;
                    setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                  }
                  , child: Text('انشاء حسابك' , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),),),
              ),
              ],
             ),
           ),
         ),
    );
    
  }
}