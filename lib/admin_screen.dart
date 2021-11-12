import 'package:care/change_password_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {



  @override
  Widget build(BuildContext context) {

    List<Widget> page = <Widget>[
      choice(name: 'اضافة',icon: Icons.person_add,tap: (){Navigator.of(context).pushNamed("/addDoctor");}),
      choice(name: 'عرض',icon: Icons.supervisor_account_rounded,tap: (){Navigator.of(context).pushNamed("/showDoctor");}),
      choice(name: 'تحديث',icon: Icons.refresh_sharp,tap: (){}),
      choice(name: 'حذف',icon: Icons.cancel_outlined,tap: (){}),
      choice(name: 'تغير كلمة السر',icon: Icons.update_rounded,tap: (){Navigator.of(context).pushNamed("/changePassword");}),
      choice(name: 'تسجيل خروج',icon: Icons.login_outlined,tap: (){}),
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Stack(
                    children :[
                      Container(
                          width: double.infinity,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Color(0xff00b6a8),
                              borderRadius:  BorderRadius.only(
                                bottomLeft:  Radius.elliptical(150.0,50.0),
                                bottomRight:  Radius.elliptical(150.0,50.0),
                              )
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const SizedBox(height: 25,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.person_outline,color: Colors.black87,size: 24,),
                                  SizedBox(width: 5,),
                                  Text('مرحبآ مدير التطبيق',style: TextStyle(letterSpacing: 5,fontSize: 24,color: Colors.white),),
                                ],
                              ),
                            ],
                          )
                      ),
                    ]
                ),
                const SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePasswordScreen()),
                        );
                      },
                      child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3/1.0,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                              page.length,
                                  (index) =>  Container(
                                child: Column(
                                  children: [
                                    page[index]
                                  ],
                                ),
                              )
                          )
                      ),
                    )
                  // defaultFormTextField()
                )],
            ),
          )
      ),
    );
  }
  Widget choice({String? name,IconData? icon,Function? tap}){
    return GestureDetector(
      onTap: (){
        tap!.call();
      },
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff00b6a8),
              ),
              width: 150,
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Icon(icon,size: 34,),
                  const SizedBox(height: 4,),
                  Text('${name}',style: const TextStyle(fontSize: 25),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
