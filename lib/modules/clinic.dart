import 'package:flutter/material.dart';
import 'package:pets_wafaa/modules/Doctor.dart';
import 'package:pets_wafaa/modules/grid%20view.dart';
import 'package:pets_wafaa/reusable/reuse.dart';

import '../reusable/colors.dart';
class Clinic extends StatefulWidget {
  @override
  State<Clinic> createState() => _ClinicState();
}

class _ClinicState extends State<Clinic> {
  List wafaa =[
  {
  "image":"assets/images/cat.jpeg",
  "text":"Dogs and Cats",
    'tr':true,
},
{
"image":"assets/images/planet.jpeg",
"text":"Pet Planet",
  'tr':true,
},
{
"image":"assets/images/zone.jpeg",
"text":"Pet Zone",
  'tr':true,
},
{
"image":"assets/images/husk.jpeg",
"text":"Husk Vet",
  'tr':true,
},
{
"image":"assets/images/care.jpeg",
"text":"Care Clinic",
  'tr':true,
},
{
"image":"assets/images/clinic.jpeg",
"text":"Pet clinic",
  'tr':true,
},
];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Container(
  width: 210.0,
  height: 50.0,
  decoration: BoxDecoration(
    color: fontColor,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Center(
    child: Text('The Available Clinics',style: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
    ),),
  ),
),
            Expanded(
              child: GridView.builder(
                itemCount: wafaa.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 1.14,
                  crossAxisSpacing: 25.0,
                  mainAxisSpacing: 25.0,
                ) ,
                itemBuilder:(context,index)
                {
                  return Grid(text: wafaa[index]["text"],image:wafaa[index]["image"],tr:wafaa[index]["tr"],
                  ontap: (){
                    if(wafaa[index]["tr"]==true){
                      setState(() {
navigateTo(context, Doctor());
                      });
                    }else
                    {
                    print(0);
                    }
                  },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
