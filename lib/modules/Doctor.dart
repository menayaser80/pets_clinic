import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_wafaa/modules/About%20Doctor.dart';
import 'package:pets_wafaa/modules/clinics.dart';
import 'package:pets_wafaa/modules/opinion.dart';
import 'package:pets_wafaa/modules/slide%20bar.dart';
import 'package:pets_wafaa/reusable/colors.dart';
import 'package:share_plus/share_plus.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  var n1 =TextEditingController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 5),
                      child:   IconButton(onPressed: (){
                        Share.share(" Vet Clinic");
                        String x=n1.text.toString();
                        Share.share(x);
                      }, icon: Icon(
                        Icons.share,
                      )),
                    ),
                    SideBar()
                  ],
                ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  width: double.infinity,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('دكتورة مني سيد العطار',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 24.0,
                        ),),
                        Text('اخصائي تخصص اسنان',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),),
                        Text('اخصائي طب وجراحة الفم والاسنان',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),),



                      ],
                    ),
                  ),
                ),
              ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('779'),
                    ),
                    Icon(Icons.remove_red_eye,),
                    SizedBox(
                      width: 50.0,
                    ),

                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('5.0'),
                    ),
                    Icon(Icons.star,color: Colors.amber,),

                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)
                        ,color: playColor,
                      ),
                      child: Center(
                        child:TextButton(onPressed: (){
                          setState((){
                            index=2;
                          });
                        },child: Text(
                          'اراء وتقييمات',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.black,
                        ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50.0,
                          width: 114.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)
                            ,color: playColor,
                          ),
                          child: Center(
                            child:TextButton(onPressed: (){
                              setState((){
                                index=1;
                              });
                            },child: Text(
                              'عن الطبيب',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21.5,
                              color: Colors.black,
                            ),),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)
                            ,color: playColor,
                          ),
                          child: Center(
                            child:TextButton(onPressed: (){},child: Text(
                              'الشات',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21.5,
                              color: Colors.black,
                            ),),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0)
                        ,color: playColor,
                      ),
                      child: Center(
                        child:TextButton(onPressed: (){
                          setState((){
                            index=0;
                          });
                        },child: Text(
                          'العيادات',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          color: Colors.black,
                        ),),
                        ),
                      ),
                    ),

                  ],
                ),
                Container(
                  height: 300,padding: EdgeInsets.symmetric(vertical: 12,horizontal: 6),
                  child: IndexedStack(
                    index: index,
                    children: [
                      Clinico(),
                      Aboutdoctor(),
                      Opinion(),
                    ],
                  ),
                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
