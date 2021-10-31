import 'package:care/Database/transaction.dart' as prefix ;
import 'package:care/add_doctor_screen.dart';
import 'package:care/add_old_screen.dart';
import 'package:care/pages/login/login_page.dart';
import 'package:care/pages/login/register.dart';
import 'package:care/show_doctor.dart';
import 'package:care/show_old_years.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Database/transaction.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<prefix.User>('users');
  runApp(const MyApp());
}

final routes = {
  '/login': (BuildContext context) =>  LoginPage(),
  '/showDoctor': (BuildContext context) =>  const ShowDoctor(),
  '/addDoctor': (BuildContext context) =>  const AddDoctorScreen(),
  '/addOldYear': (BuildContext context) =>  const AddOldScreen(),
  '/showOldYear': (BuildContext context) =>  const ShowOldYears(),
  '/register': (BuildContext context) =>  RegisterPage(),
  '/': (BuildContext context) =>  LoginPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      // home: const LoginScreen(),
    );
  }
}

