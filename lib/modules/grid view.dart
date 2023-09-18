import 'package:flutter/material.dart';
class Grid extends StatelessWidget {
  const Grid({Key? key,this.text,this.image,this.ontap,this.tr = false}) : super(key: key);
  final text,image;
  final Function()? ontap;
  final bool tr;
  @override
  Widget build(BuildContext context) {
    return Container(
     // width: 160,
    //  height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [BoxShadow(
          color: Colors.black38,
          blurRadius: 18,
          offset: Offset(0,0)
        )],
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),fit: BoxFit.cover,),
              )


          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 3),
                child: Text('$text',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19.0,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
    //   InkWell(
    //   onTap:ontap,
    //   child: Container(
    //     height: 400.0,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage(image),
    //         fit: BoxFit.cover,
    //       ),
    //       borderRadius: BorderRadius.circular(100.0),
    //     ),
    //     child:Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(100.0),
    //       ),
    //       child: Center(child: Text('$text',style: TextStyle(
    //         color: Colors.white,
    //         fontWeight: FontWeight.bold,
    //         fontSize: 15.0,
    //       ),)),
    //
    //     ),
    //   ),
    // );
  }
}
