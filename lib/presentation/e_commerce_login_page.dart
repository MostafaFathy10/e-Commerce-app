import 'package:e_commerce_app/custom_snack_bar.dart';
import 'package:e_commerce_app/presentation/e_commerce_sign_up_page.dart';
import 'package:e_commerce_app/presentation/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class CommerceLoginPage extends StatefulWidget {
  const CommerceLoginPage({super.key});

  @override
  State<CommerceLoginPage> createState() => _CommerceLoginPageState();
}

class _CommerceLoginPageState extends State<CommerceLoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
      
        ),
      ),
    );
    
  }
  Future<void> loginUser() async {
  var FirebaseAuth;
  UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email! , password: password!);
}
}

mixin UserCredential {
}

GlobalKey<FormState> formKey = GlobalKey();
String? email;
  String? password;
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 137.76,
          height: 55.76,
          child: Image.asset('assets/images/shop.png')
          ),
          Text('مرحبا' , style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            
          ),
          
          ),
          SizedBox(
            height: 10,
          ),
          Text('تسجيل الدخول' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(93, 93, 93, 1),
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
                label: Text('البريد الإلكتروني' , style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(72, 72, 72, 1),
                ),
                ),
                hintText: 'email@example.com',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
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
                hintText: 'password',
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('نسيت كلمة المرور؟' , style: TextStyle(
            color: Color.fromRGBO(89, 89, 89, 1),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),)),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            width: 370,
            height: 60,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(14, 52, 193, 1)),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              onPressed: ()async {
                if(formKey.currentState!.validate()) {
                  isLoading = true;
                  
                  setState((){});
                   try{
                    await loginUser();
                    ShowSnackBar(context, 'Login Successfully');
                    // Navigator.pushNamed(context, MaterialPageRoute(builder: (context)=> HomeScreen()));

                   } on FirebaseException catch(ex){
                    if (ex == 'User not found') {
                      ShowSnackBar(context, 'No user found to that email');
                    }else if(ex == 'Wrong password'){
                      ShowSnackBar(context, 'Wrong password for that user');
                    }
                   }
                   isLoading = false;
                   setState(() {});

                }else{}
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              } , child: Text('تسجيل الدخول' , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ليس لديك حساب؟' , style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(93, 93, 93, 1),
              ),
              ),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
              }, child: Text('قم بإنشاء حساب', style: TextStyle(
                color: Color.fromRGBO(14, 52, 193, 1),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),))
            ],
          )
      ],
    );
  }
  
  Future<void> loginUser() async {
  var FirebaseAuth;
  UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email! , password: password!);
} 
  
  void setState(Null Function() param0) {
  }

