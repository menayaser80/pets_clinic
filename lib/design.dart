import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pets_wafaa/cubit/bloc.dart';
import 'package:pets_wafaa/cubit/states.dart';
import 'package:intl/intl.dart';
import 'package:pets_wafaa/modules/comments.dart';
import 'package:pets_wafaa/reusable/reuse.dart';

class Design extends StatefulWidget {
  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  File? image;
  var formkey = GlobalKey<FormState>();
  var titlecontroller = TextEditingController();
  var lecturecontroller = TextEditingController();
  var timecontroller = TextEditingController();
  var datecontroller = TextEditingController();
  var textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {
        if (state is AppInsertDataBase) {
          Navigator.pop(context);
        }
      },
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          key: scaffoldkey,
          body: ConditionalBuilder(
            condition: state is! AppGetDataBaseLoading,
            builder: (context) => ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, i) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            if (cubit.newtasks[i]['image'] != null)
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 50,width: 50,
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(shape: BoxShape.circle),
                                        child: Image.memory(Base64Decoder()
                                            .convert(cubit.newtasks[i]['image']),height: 50,width: 50,fit: BoxFit.fill,)),
                                    SizedBox(width: 13.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cubit.newtasks[i]['name'],
                                          style: TextStyle(fontSize: 20,
                                              fontWeight:FontWeight.bold,color: Colors.black),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 5.0,),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                cubit.newtasks[i]['datee'],
                                                style: TextStyle(fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(width: 8.0,),
                                              Text(
                                                cubit.newtasks[i]['timee'],
                                                style: TextStyle(fontSize: 16,
                                                    color: Colors.black),
                                              ),]),

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                Text(
                                                   cubit.newtasks[i]['lecturee'],
                                                   style: TextStyle(fontSize: 18,
                                                       fontWeight: FontWeight.bold,
                                                       color: Colors.purple),
                                                 ),
                          ],
                        ),
                      ),

                          SizedBox(height: 10,),
                      Text('Recursion',style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 5.0,),
                      Text(
                                               cubit.newtasks[i]['texte'],
                                               style: TextStyle(fontSize: 18.0,
                                                   color: Colors.black),
                        textAlign: TextAlign.end,
                                             ),
                                             MaterialButton(onPressed: (){
                                 navigateTo(context, Comments);
                                },child: Text('No Response',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                ),),),
                    ],
                  ),
                ),
              ),
              itemCount: cubit.newtasks.length,
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (cubit.isclosed) {
                if (formkey.currentState!.validate()) {
                  var imgBytes;
                  if (image != null) {
                    var t = await image!.readAsBytes();
                    imgBytes = Uint8List.fromList(t);
                  }
                  cubit.addToDatabase({
                    'name': titlecontroller.text,
                    'image': base64Encode(imgBytes),
                    'datee':datecontroller.text,
                    'timee':timecontroller.text,
                    'texte':textcontroller.text,
                    'lecturee':lecturecontroller.text,
                  });
                  titlecontroller.clear();
                  datecontroller.clear();
                  timecontroller.clear();
                  textcontroller.clear();
                  lecturecontroller.clear();
                }
              } else {
                scaffoldkey.currentState!
                    .showBottomSheet(
                      (context) => Container(
                        color: Colors.grey[100],
                        padding: EdgeInsets.all(20.0),
                        child: Form(
                          key: formkey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              defaultformfield(
                                controller: titlecontroller,
                                type: TextInputType.text,
                                label: 'Name',
                                prefix: Icons.person,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              defaultformfield(
                                controller: timecontroller,
                                type: TextInputType.datetime,
                                ontap: () {
                                  showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((value) {
                                    timecontroller.text =
                                        value!.format(context).toString();
                                    print(value.format(context));
                                  });
                                },
                                label: 'Time',
                                prefix: Icons.watch_later_outlined,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              defaultformfield(
                                controller: datecontroller,
                                type: TextInputType.datetime,
                                ontap: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2025-11-26'),
                                  ).then((value) {
                                    datecontroller.text =
                                        DateFormat.yMMMd().format(value!);
                                  });
                                },
                                label: 'Date',
                                prefix: Icons.calendar_today,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              defaultformfield(
                                controller: textcontroller,
                                type: TextInputType.text,
                                label: 'Text',
                                prefix: Icons.text_fields,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              defaultformfield(
                                controller: lecturecontroller,
                                type: TextInputType.text,
                                label: 'lecture',
                                prefix: Icons.text_fields,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      MaterialButton(
                                        onPressed: () async {
                                          final ImagePicker _picker =
                                              ImagePicker();
                                          final pickedImage =
                                              await _picker.pickImage(
                                                  source: ImageSource.camera);
                                          if (pickedImage != null) {}

                                          setState(() {
                                            image = File(pickedImage!.path);
                                          });
                                        },
                                        child: Text(
                                          'Camera',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              backgroundColor: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      MaterialButton(
                                        onPressed: () async {
                                          dynamic x = ImagePicker();
                                          dynamic y = await x.getImage(
                                              source: ImageSource.gallery);
                                          setState(() {
                                            if (y != null) {
                                              image = File(y.path);
                                            }
                                          });
                                        },
                                        child: Text(
                                          'Gallery',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            backgroundColor: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .closed
                    .then((value) {
                  cubit.Changebottomsheet(isshow: false, icon: Icons.edit);
                });
                cubit.Changebottomsheet(isshow: true, icon: Icons.add);
              }
            },
            child: Icon(
              cubit.fabicon,
            ),
          ),
        );
      },
    );
  }
}
