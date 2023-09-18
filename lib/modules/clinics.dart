import 'package:flutter/material.dart';
import 'package:pets_wafaa/reusable/colors.dart';

class Clinico extends StatefulWidget {
  @override
  State<Clinico> createState() => _ClinicoState();
}

class _ClinicoState extends State<Clinico> {
  var time=['1.00','2.00','3.00','4.00','5.00','6.00','7.00','8.00','9.00','10.00','11.00','12.00'];
  String? selecteditem = '1.00';
  var fe = '1.00';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('عيادة اون لاين',style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.wifi_calling_outlined,color: fontColor,),
                      SizedBox(
                        width: 0.5,
                      ),
                      Column(
                        children: [
                          Text('نوع الخدمة',style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),),
                          Text('اتصال هاتفي',style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Icon(Icons.monetization_on,
                        color: fontColor,),
                      SizedBox(
                        width: 0.5,
                      ),
                      Column(
                        children: [
                          Text('سعر الكشف',style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.grey,
                          ),),
                          Text('25 جنيها',style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                    width:double.infinity,
                    child: MaterialButton(onPressed: (){},child: Text('احجز بكرة $selecteditem',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),),)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('اختر معاد تاني',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    SizedBox(width: 10.0,),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: Colors.white,
                      child: DropdownButton<String>(
                        items: time.map((String item) {
                          return DropdownMenuItem<String>(
                            onTap: (){
                              setState(() {
                                selecteditem=item;
                              });
                            },
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? thelang) {
                          setState(() {
                            fe = thelang!;
                          });
                        },
                        value: fe,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
