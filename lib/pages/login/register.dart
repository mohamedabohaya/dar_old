import 'package:care/data/database_helper.dart';
import 'package:care/models/user.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState  extends State<RegisterPage> {
  BuildContext? _ctx;
  bool _isLoading = false;
  final formKey =  GlobalKey<FormState>();
  final scaffoldKey =  GlobalKey<ScaffoldState>();
  String? _name, _username, _password,_phone;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn =  MaterialButton(
      onPressed: _submit,
      child: const Text('تسجيل',style: TextStyle(color: Colors.white),
    ));
    var loginForm =  SingleChildScrollView(
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
                      onSaved: (val) => _name = val,
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
                      onSaved: (val) => _phone = val,
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
                      onSaved: (val) => _username = val,
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
                      onSaved: (val) => _password = val,
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
                        child: loginBtn,
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
                                builder: (context) =>  LoginPage()),
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
    );

    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: scaffoldKey,
        body:  Container(
          child:  loginForm,
        ),
      ),
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState!.showSnackBar( SnackBar(
      content:  Text(text),
    ));
  }

  void _submit(){
    final form = formKey.currentState;

    if (form!.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user =  User(_name, _username, _password, null,_phone , null);
        var db =  DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.of(context).pushNamed("/login");
      });
    }
  }
}