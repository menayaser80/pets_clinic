import 'package:flutter/material.dart';
import 'package:pets_wafaa/modules/clinic.dart';
import 'package:pets_wafaa/reusable/colors.dart';
import 'package:pets_wafaa/reusable/reuse.dart';

class Layout extends StatelessWidget {
  var code = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.symmetric(vertical: 30.0),
  child:   SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: Text('Content of the App',style: TextStyle(fontSize: 20.0,
          fontWeight: FontWeight.bold,),),
        ),
        SizedBox(
          height: 15.0,
        ),
        Image(image: AssetImage('assets/images/layout.jpg'),width: double.infinity,height: 300,fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: TextFormField(
           decoration: InputDecoration(
             suffixIcon: Icon(
               Icons.search,
               size: 30.0,
             ),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30.0),
               borderSide: BorderSide(
                 color: playColor,
                 width: 3,
               ),
             ),
           ),

       ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent,
                ),
                child: Center(
                  child: TextButton(onPressed: (){
                    navigateTo(context, Clinic());
                  },child: Text('Clinics',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),),
                  ),
                ),
              ),
            Spacer(),
              Container(
                height: 50.0,
                width: 170,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent,
                ),
                child: Center(
                  child: TextButton(onPressed: (){},child: Text('Cats',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),),
                  ),
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: TextButton(onPressed: (){},child: Text('Dogs',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 50.0,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: TextButton(onPressed: (){},child: Text('Rate & opinions',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  ),
),
    );
  }
}
