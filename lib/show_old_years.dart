import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowOldYears extends StatefulWidget {
  const ShowOldYears({Key? key}) : super(key: key);

  @override
  _ShowOldYearsState createState() => _ShowOldYearsState();
}

class _ShowOldYearsState extends State<ShowOldYears> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('عرض كل كبار السن',style: TextStyle(color: Color(0xff00b6a8),fontWeight: FontWeight.bold),),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
                doctor('محمد ابوحية', '٢٢ سنة'),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget doctor(String name,String job){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xff00b6a8)),
                borderRadius: BorderRadius.circular(22)
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Image(image: AssetImage('assets/doctor.png'),width: 50,),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('${name}',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text('${job}',style: const TextStyle(fontSize: 16,color: Color(0xff00b6a8))),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.remove_red_eye_outlined)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
