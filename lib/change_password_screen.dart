import 'package:care/add_doctor_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'admin_screen.dart';
import 'data/database_helper.dart';
import 'models/user.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color(0xfff4f1f1),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xffd6d6d6), Color(0xfff4f1f1)]
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/teacher.jpeg',
                        ),
                        radius: 60.0),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('مدير التطبيق',style: TextStyle(color: Color(0xff00b6a8),fontSize: 18),),
                        SizedBox(height: 10,),
                        Text('محمد ابوحية',style: TextStyle(color: Color(0xffb2b2b2)),),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40,),
                const Center(
                    child:  Text('تغير كلمة السر',
                      style: TextStyle(
                          color: Color(0xff00b6a8),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: password,
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
                      labelStyle: const TextStyle(color:Color(0xff00b6a8) ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: password,
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
                      labelText: ' تآكيد كلمة المرور',
                      labelStyle: const TextStyle(color:Color(0xff00b6a8),),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                ),
                const SizedBox(height: 10,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff00b6a8),
                    ),
                    width:double.infinity,
                    child: MaterialButton(
                      onPressed: (){
                        var db =  DatabaseHelper();
                        db.updateItem(1,password.text);
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: Column(
                        children:const [
                          Text('تغير',style: TextStyle(color: Colors.white),),
                        ],
                      ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
