import 'package:flutter/material.dart';
import 'package:pets_wafaa/reusable/colors.dart';

class Aboutdoctor extends StatelessWidget {
  const Aboutdoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Directionality(
  textDirection: TextDirection.rtl,
  child:   SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white54,
              ),
              child: Column(
                children: [
                  Text('عن الطبيب',style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('اخصائي طب وجراحة الفم والاسنان',style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('عضو الجمعية المصرية لزراعة الاسنان',style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),

            ),
            Text('متخصص في',style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
            Row(
              children: [
                Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
color: fontColor,
                  ),
                  child: Center(
                    child:TextButton(
                      onPressed: (){},child:Text('طربوش Fsm',style: TextStyle(
    fontSize: 20.0,
     fontWeight: FontWeight.bold,
    color: Colors.black,
    ),),
       ),
     ),
                    ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 130.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: fontColor,
                  ),
                  child: Center(
                    child:TextButton(onPressed: (){},child:Text('التقويم الخزفي',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Container(
                  width: 190.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: fontColor,
                  ),
                  child: Center(
                    child: TextButton(onPressed: (){},child:Text('تبييض الاسنان الكيميائي',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 190.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: fontColor,
                  ),
                  child: Center(
                    child:TextButton(onPressed: (){},child:Text('حشو الاسنان بالليزر',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    ),
                  ),
                ),
              ],
            ),

          ],

        ),
      ),
    ),
  ),
),
    );
  }
}
