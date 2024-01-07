import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/controller/my_controller/my_controller.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';
import 'package:my_project/utils/image_constant/image_constant.dart';
import 'package:my_project/view/about_screen/about_screen.dart';

import 'package:my_project/view/requests_page/requests.dart';
import 'package:share_plus/share_plus.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
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
        title: Text("Wastico", style: FontConstant.myFonts
            // TextStyle(
            //     fontWeight: FontWeight.bold, color: ColorConstant.White),
            ),
      ),
      // drawer: Drawer(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15),
      //     child: Container(
      //       height: 600,
      //       color: ColorConstant.White,
      //       child: Column(
      //         children: [
      //           Container(
      //             child: Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: CircleAvatar(
      //                 radius: 45,
      //                 backgroundColor: Color.fromARGB(244, 208, 206, 206),
      //                 child: Icon(
      //                   Icons.person,
      //                   size: 40,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "Alice",

      //                 //ProfileNamecontroller.text,
      //                 style:
      //                     TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(
      //                 width: 5,
      //               ),
      //               IconButton(
      //                   onPressed: () {
      //                     showModalBottomSheet(
      //                       isScrollControlled: true,
      //                       context: context,
      //                       builder: (context) => Padding(
      //                         padding: EdgeInsets.only(
      //                             bottom:
      //                                 MediaQuery.of(context).viewInsets.bottom),
      //                         child: Padding(
      //                           padding: const EdgeInsets.all(8.0),
      //                           child: Column(
      //                             mainAxisSize: MainAxisSize.min,
      //                             children: [
      //                               TextField(
      //                                 controller: ProfileNamecontroller,
      //                                 decoration: InputDecoration(
      //                                     hintText: "Your Name",
      //                                     border: OutlineInputBorder(
      //                                         borderSide: BorderSide(),
      //                                         borderRadius:
      //                                             BorderRadius.circular(10))),
      //                               ),
      //                               ElevatedButton(
      //                                 onPressed: () {
      //                                   MyControllerobj.addProfile(
      //                                       ProfileUserName:
      //                                           ProfileNamecontroller.text);
      //                                   ProfileNamecontroller.clear();
      //                                   Navigator.pop(context);
      //                                 },
      //                                 child: Text("save"),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     );
      //                     // showModalBottomSheet(context: context, builder: (context) => Column(
      //                     //   children: [
      //                     //     TextField(
      //                     //       decoration: ,
      //                     //     )
      //                     //   ],
      //                     // ),);
      //                   },
      //                   icon: Icon(Icons.edit))
      //             ],
      //           ),
      //           SizedBox(
      //             height: 30,
      //           ),
      //           //
      //           HomeScreenWidget(
      //             ontap: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => RequestsScreen(),
      //                   ));
      //             },
      //             correstitle: "Requests",
      //             corresicon: Icon(Icons.insert_chart_outlined),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           // HomeScreenWidget(
      //           //   ontap: () {
      //           //     Navigator.push(
      //           //         context,
      //           //         MaterialPageRoute(
      //           //           builder: (context) => ThemeScreen(),
      //           //         ));
      //           //   },
      //           //   correstitle: "Theme",
      //           //   corresicon: Icon(
      //           //     Icons.light_mode,
      //           //     size: 35,
      //           //   ),
      //           // ),
      //           // SizedBox(
      //           //   height: 10,
      //           // ),
      //           HomeScreenWidget(
      //               ontap: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => AboutScreen(),
      //                     ));
      //               },
      //               correstitle: "About",
      //               corresicon: Icon(
      //                 Icons.info_outline,
      //                 size: 35,
      //               )),

      //           SizedBox(
      //             height: 20,
      //           ),
      //           HomeScreenWidget(
      //             ontap: () {
      //               showDialog(
      //                 context: context,
      //                 builder: (context) => Container(
      //                   height: 400,
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       AlertDialog(
      //                         backgroundColor: ColorConstant.White,
      //                         title: Container(
      //                           height: 400,
      //                           child: Column(
      //                             children: [
      //                               Row(
      //                                 mainAxisAlignment:
      //                                     MainAxisAlignment.center,
      //                                 children: [
      //                                   Text(
      //                                     "Rate Us",
      //                                     style: TextStyle(
      //                                         fontSize: 25,
      //                                         fontWeight: FontWeight.bold),
      //                                   ),
      //                                   SizedBox(
      //                                     width: 10,
      //                                   ),
      //                                   Icon(
      //                                     Icons.star,
      //                                     size: 40,
      //                                     color: Colors.amber,
      //                                   )
      //                                 ],
      //                               ),
      //                               SizedBox(
      //                                 height: 20,
      //                               ),
      //                               Text(
      //                                 "We are Working hard for a better user experience.",
      //                                 style: TextStyle(
      //                                     fontWeight: FontWeight.bold),
      //                               ),
      //                               SizedBox(
      //                                 height: 15,
      //                               ),
      //                               Text(
      //                                 "We'd greatly appreciate if you can rate us.",
      //                                 style: TextStyle(
      //                                     fontWeight: FontWeight.bold),
      //                               ),
      //                               SizedBox(
      //                                 height: 30,
      //                               ),
      //                               Row(
      //                                 mainAxisAlignment:
      //                                     MainAxisAlignment.spaceEvenly,
      //                                 children: [
      //                                   Icon(
      //                                     Icons.star_border,
      //                                     size: 40,
      //                                     color: Colors.grey,
      //                                   ),
      //                                   Icon(
      //                                     Icons.star_border,
      //                                     size: 40,
      //                                     color: Colors.grey,
      //                                   ),
      //                                   Icon(
      //                                     Icons.star_border,
      //                                     size: 40,
      //                                     color: Colors.grey,
      //                                   ),
      //                                   Icon(
      //                                     Icons.star_border,
      //                                     size: 40,
      //                                     color: Colors.grey,
      //                                   ),
      //                                   Icon(
      //                                     Icons.star_border,
      //                                     size: 40,
      //                                     color: Colors.grey,
      //                                   ),
      //                                 ],
      //                               ),
      //                               SizedBox(
      //                                 height: 30,
      //                               ),
      //                               Container(
      //                                 height: 50,
      //                                 width: 500,
      //                                 decoration: BoxDecoration(
      //                                     color: Colors.amber,
      //                                     borderRadius:
      //                                         BorderRadius.circular(10)),
      //                                 child: Center(
      //                                   child: Text(
      //                                     "Rate",
      //                                     style: GoogleFonts.nunito(
      //                                         fontSize: 25,
      //                                         fontWeight: FontWeight.bold,
      //                                         color: ColorConstant.White),
      //                                   ),
      //                                 ),
      //                               )
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               );
      //             },
      //             correstitle: "Rate Us",
      //             corresicon: Icon(Icons.star, size: 35),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           HomeScreenWidget(
      //             ontap: () {
      //               Share.share("");
      //             },
      //             correstitle: "Share",
      //             corresicon: Icon(Icons.share, size: 35),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Image.asset(
      //             ImageConstant.Collecting,
      //             fit: BoxFit.fill,
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
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
                                        MyControllerobj.addData(
                                          UserName: NameController.text,
                                          UserPhone: PhoneController.text,
                                          UserAddress: AddressController.text,
                                          WasteQuantity:
                                              QuantityController.text,
                                          RequestDate: DateController.text,
                                        );
                                        NameController.clear();
                                        PhoneController.clear();
                                        AddressController.clear();
                                        QuantityController.clear();
                                        DateController.clear();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RequestsScreen(),
                                            ));
                                      },
                                      child: Text("save"),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
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
                                    TextField(
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
                                    TextField(
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
                                    TextField(
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
                                    TextField(
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
                                    TextField(
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
                                        onPressed: () async {
                                          MyControllerobj.addEData(
                                            EUserName: ENameController.text,
                                            EUserPhone: EPhoneController.text,
                                            EUserAddress:
                                                EAddressController.text,
                                            EWasteQuantity:
                                                EQuantityController.text,
                                            ERequestDate: EDateController.text,
                                          );
                                          ENameController.clear();
                                          EPhoneController.clear();
                                          EAddressController.clear();
                                          EQuantityController.clear();
                                          EDateController.clear();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RequestsScreen(),
                                              ));
                                        },
                                        child: Text("save")),
                                    SizedBox(
                                      height: 20,
                                    ),
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
