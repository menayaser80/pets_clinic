import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:pets_wafaa/cubit/bloc.dart';
import 'package:share_plus/share_plus.dart';

void navigateTo(context,Widget)=>Navigator.push(context, MaterialPageRoute(
  builder:(context)=>Widget,
));
Widget defaultformfield({
  required TextEditingController controller,
  required TextInputType type,
  Function(String x)?onchange,
   String? Function(String?val)?validator,
  required String label,
  required IconData prefix,
  VoidCallback? ontap,
  bool isclickable=true,
})=> TextFormField(
  controller: controller,
  decoration: InputDecoration(
    prefixIcon: Icon(
      prefix,
    ),
    labelText: label,
    border: OutlineInputBorder(),
  ),
  validator: validator,
  onTap: ontap,
  keyboardType:type,
  onChanged:onchange,
  enabled: isclickable,

);

