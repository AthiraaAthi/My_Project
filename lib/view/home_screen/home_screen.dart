import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:my_project/controller/my_controller/my_controller.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';
import 'package:my_project/utils/image_constant/image_constant.dart';
import 'package:my_project/view/requests_page/e-waste_screen.dart';
import 'package:my_project/view/requests_page/plastics_screen.dart';

import 'package:my_project/view/requests_page/requests.dart';
import 'package:my_project/view/success_screen/success_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CollectionReference employeeCollection =
      FirebaseFirestore.instance.collection("Users");

  TextEditingController NameController = TextEditingController();

  TextEditingController PhoneController = TextEditingController();

  TextEditingController AddressController = TextEditingController();

  TextEditingController QuantityController = TextEditingController();

  TextEditingController DateController = TextEditingController();

  CollectionReference EUserCollection =
      FirebaseFirestore.instance.collection("Euser");

  TextEditingController ENameController = TextEditingController();

  TextEditingController EPhoneController = TextEditingController();

  TextEditingController EAddressController = TextEditingController();

  TextEditingController EQuantityController = TextEditingController();

  TextEditingController EDateController = TextEditingController();

  CollectionReference ProfileCollection =
      FirebaseFirestore.instance.collection("ProfileName");

  TextEditingController ProfileNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MyController MyControllerobj = MyController();
    return Scaffold(
      backgroundColor: ColorConstant.White,
      appBar: AppBar(
        backgroundColor: ColorConstant.MainGreen,
        title: Text("Wastico", style: FontConstant.myFonts),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            ImageConstant.Cleaning,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: Container(
                              height: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextField(
                                      controller: NameController,
                                      decoration: InputDecoration(
                                          hintText: "Your Name",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: PhoneController,
                                      decoration: InputDecoration(
                                          hintText: "Phone no",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: AddressController,
                                      decoration: InputDecoration(
                                          hintText: "Your Address",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: QuantityController,
                                      decoration: InputDecoration(
                                          hintText: "Quantity of Waste",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      controller: DateController,
                                      decoration: InputDecoration(
                                          hintText: "Date of Request",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        if (NameController.text.isNotEmpty &&
                                            PhoneController.text.isNotEmpty &&
                                            AddressController.text.isNotEmpty &&
                                            QuantityController
                                                .text.isNotEmpty &&
                                            DateController.text.isNotEmpty) {
                                          MyControllerobj.addData(
                                              UserName: NameController.text,
                                              UserPhone: PhoneController.text,
                                              UserAddress:
                                                  AddressController.text,
                                              WasteQuantity:
                                                  QuantityController.text,
                                              RequestDate: DateController.text,
                                              Type: "Plastic");

                                          NameController.clear();
                                          PhoneController.clear();
                                          AddressController.clear();
                                          QuantityController.clear();
                                          DateController.clear();
                                          // ScaffoldMessenger.of(context)
                                          //     .showSnackBar(
                                          //   SnackBar(
                                          //     backgroundColor:
                                          //         ColorConstant.MainGreen,
                                          //     content: Text(
                                          //         "Request Send Successfully!",
                                          //         style: GoogleFonts.poppins(
                                          //             color:
                                          //                 ColorConstant.White,
                                          //             fontWeight:
                                          //                 FontWeight.bold,),),
                                          //   ),
                                          // );

                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SuccessScreen(),
                                              ));
                                        } else {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text(
                                                "please fill all the details",
                                                style: TextStyle(
                                                  color: ColorConstant.White,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text("save"),
                                    ),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),
                                    Image.asset(ImageConstant.Collecting)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.plastic),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    Text(
                      "Plastic",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: Container(
                              height: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      controller: ENameController,
                                      decoration: InputDecoration(
                                          hintText: "Your Name",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: EPhoneController,
                                      decoration: InputDecoration(
                                          hintText: "Phone no",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: EAddressController,
                                      decoration: InputDecoration(
                                          hintText: "Your Address",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: EQuantityController,
                                      decoration: InputDecoration(
                                          hintText: "Quantity of Waste",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: EDateController,
                                      decoration: InputDecoration(
                                          hintText: "Date of Request",
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (ENameController.text.isNotEmpty &&
                                              EPhoneController
                                                  .text.isNotEmpty &&
                                              EAddressController
                                                  .text.isNotEmpty &&
                                              EQuantityController
                                                  .text.isNotEmpty &&
                                              EDateController.text.isNotEmpty) {
                                            MyControllerobj.addEData(
                                                EUserName: ENameController.text,
                                                EUserPhone:
                                                    EPhoneController.text,
                                                EUserAddress:
                                                    EAddressController.text,
                                                EWasteQuantity:
                                                    EQuantityController.text,
                                                ERequestDate:
                                                    EDateController.text,
                                                Type: "E-Waste");
                                            // ScaffoldMessenger.of(context)
                                            //     .showSnackBar(SnackBar(
                                            //         backgroundColor:
                                            //             ColorConstant.MainGreen,
                                            //         content: Text(
                                            //           "Request Send Successfully!",
                                            //           style:
                                            //               GoogleFonts.poppins(
                                            //             color:
                                            //                 ColorConstant.White,
                                            //             fontWeight:
                                            //                 FontWeight.bold,
                                            //           ),
                                            //         )));
                                            ENameController.clear();
                                            EPhoneController.clear();
                                            EAddressController.clear();
                                            EQuantityController.clear();
                                            EDateController.clear();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SuccessScreen(),
                                                ));
                                          } else {
                                            Navigator.pop(context);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text(
                                                  "Fill All your Details...",
                                                  style: TextStyle(
                                                    color: ColorConstant.White,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                        child: Text("save")),
                                    // SizedBox(
                                    //   height: 20,
                                    // ),
                                    Image.asset(
                                      ImageConstant.Collecting,
                                      fit: BoxFit.fill,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.eWaste),
                              fit: BoxFit.fill,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    Text(
                      "E-Waste",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(ImageConstant.Nature)
        ],
      ),
    );
  }
}
