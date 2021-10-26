import 'package:care/add_old_screen.dart';
import 'package:care/show_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'admin_screen.dart';

class AddDoctorScreen extends StatefulWidget {
  const AddDoctorScreen({Key? key}) : super(key: key);

  @override
  _AddDoctorScreenState createState() => _AddDoctorScreenState();
}

class _AddDoctorScreenState extends State<AddDoctorScreen> {
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/teacher.jpeg',
                    ),
                    radius: 60.0),
                const SizedBox(height: 20,),
                const Text('اضافة دكتور جديد',
                  style: TextStyle(
                      color: Color(0xff00b6a8),fontSize: 18,fontWeight: FontWeight.bold),),
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
                    labelText: 'اسم الدكتور',
                    labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                    prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  // controller: getIt<LoginProvider>().emailController,
                  keyboardType: TextInputType.phone,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'الرقم يجب تعبئته';
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
                    labelText: 'رقم الهاتف',
                    labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                    prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  // controller: getIt<LoginProvider>().emailController,
                  keyboardType: TextInputType.name,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'التخصص يجب تعبئته';
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
                    labelText: 'التخصص',
                    labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                    prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  // controller: getIt<LoginProvider>().emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'البريد يجب تعبئته';
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
                    labelText: 'البريد الالكتروني',
                    labelStyle: const TextStyle(color: Color(0xff00b6a8)),
                    prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
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
                    prefixIcon: const Icon(Icons.email,color: Color(0xff00b6a8),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
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
                      prefixIcon: const Icon(Icons.lock,color:Color(0xff00b6a8) ,),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined,color:Color(0xff00b6a8)),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShowDoctor()),
                        );
                        },
                      child: Column(
                        children:const [
                          Text('حفظ',style: TextStyle(color: Colors.white),),
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
