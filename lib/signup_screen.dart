import 'package:care/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'admin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Stack(
                    children :[
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                            color: Color(0xff00b6a8),
                            borderRadius:  BorderRadius.only(
                              bottomLeft:  Radius.elliptical(200.0,100.0),
                              bottomRight:  Radius.elliptical(200.0,100.0),
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            RichText(
                                text: const TextSpan(
                                    children: [
                              TextSpan(text: 'Eldarly ',style: TextStyle(fontSize: 30)),
                              TextSpan(text: 'Care ',style: TextStyle(color: Colors.pinkAccent,fontSize: 30)),
                            ])),
                            const SizedBox(height: 5,),
                            const Image(image:AssetImage('assets/home.png'),width: 100,)
                            // Text('Eldarly Care',style: TextStyle(fontSize: 24),),
                          ],
                        )
                      ),
                    ]
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          Center(child: Text('تسجيل ',style:  Theme.of(context).textTheme.headline4!.copyWith(color: Colors.black),)),
                          const SizedBox(height: 20,),
                          TextFormField(
                            // controller: getIt<LoginProvider>().emailController,
                            keyboardType: TextInputType.name,
                            validator: (value){
                              if(value!.isEmpty){
                                return 'الاسم يجب تعبئته';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                  width: 1.0,
                                ),
                              ),
                                labelText: 'اسم المستخدم',
                                labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                                prefixIcon: const Icon(Icons.person,color: Color(0xff00b6a8)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            // controller: getIt<RegisterProvider>().phoneController,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'رقم الهاتف يجب تعبئته';
                              }
                              return null;
                            },
                            decoration:  InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                  width: 1.0,
                                ),
                              ),
                                labelText: 'رقم الهاتف',
                              labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                              prefixIcon: const Icon(Icons.mobile_friendly,color: Color(0xff00b6a8)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // controller: getIt<RegisterProvider>().emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'البريد الالكتروني يجب تعبئته';
                              }
                              return null;
                            },
                            decoration:  InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(
                                  color: Color(0xff00b6a8),
                                  width: 1.0,
                                ),
                              ),
                                labelText: 'البريد الالكتروني',
                              labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                              prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // controller: getIt<LoginProvider>().passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value){
                              if(value!.isEmpty){
                                return 'كلمة المرور يجب تعبئته';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration:  InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff00b6a8),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff00b6a8),
                                    width: 1.0,
                                  ),
                                ),
                                labelText: 'كلمة المرور',
                                labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                                prefixIcon: const Icon(Icons.lock,color: Color(0xff00b6a8)),
                                suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: Color(0xff00b6a8)),
                                border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff00b6a8),
                            ),
                              width:double.infinity,
                              child: MaterialButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AdminScreen()),
                                  );
                                  if(formKey.currentState!.validate()){
                                    // getIt<LoginProvider>().login();
                                    print('suc');
                                  }else{
                                    print('error');
                                  }
                                },
                                child: Column(
                                  children:const [
                                    Text('تسجيل',style: TextStyle(color: Colors.white),),
                                  ],
                                ),),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('هل  تمتلك حساب ؟'),
                              TextButton(onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginScreen()),
                                );
                              }, child: const Text('سجل دخول',style: TextStyle(color: Color(0xff00b6a8)),))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  // defaultFormTextField()
                ],
              ),
            ),
          )
      ),
    );
  }
}
