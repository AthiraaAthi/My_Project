import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/view/instructions_screen/instructions_screen.dart';
import 'package:my_project/view/response_screen/response_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/image_constant/image_constant.dart';
import '../about_screen/about_screen.dart';
import '../home_screen/home_screen_widget.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});
  // Obtain shared preferences.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: ColorConstant.MainGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Color.fromARGB(244, 208, 206, 206),
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "User",

                  //ProfileNamecontroller.text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            HomeScreenWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InstructionScreen(),
                      ));
                },
                correstitle: "User Guide",
                corresicon: Icon(
                  Icons.book_rounded,
                  size: 35,
                )),
            SizedBox(
              height: 20,
            ),
            HomeScreenWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResponseScreen(),
                      ));
                },
                correstitle: "Responses",
                corresicon: Icon(
                  Icons.restore_page_rounded,
                  size: 35,
                )),
            SizedBox(
              height: 20,
            ),
            HomeScreenWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(),
                      ));
                },
                correstitle: "About",
                corresicon: Icon(
                  Icons.info_outline,
                  size: 35,
                )),

            SizedBox(
              height: 20,
            ),
            HomeScreenWidget(
              ontap: () {
                showDialog(
                  context: context,
                  builder: (context) => Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AlertDialog(
                          backgroundColor: ColorConstant.White,
                          title: Container(
                            height: 400,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rate Us",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 40,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "We are Working hard for a better user experience.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "We'd greatly appreciate if you can rate us.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 40,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 50,
                                  width: 500,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Rate",
                                      style: GoogleFonts.nunito(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: ColorConstant.White),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              correstitle: "Rate Us",
              corresicon: Icon(Icons.star, size: 35),
            ),
            SizedBox(
              height: 20,
            ),
            HomeScreenWidget(
              ontap: () {
                Share.share("");
              },
              correstitle: "Share",
              corresicon: Icon(Icons.share, size: 35),
            ),
            // // SizedBox(
            // //   height: 10,
            // // ),
            // Image.asset(
            //   ImageConstant.Collecting,
            //   fit: BoxFit.fill,
            // )
          ],
        ),
      ),
    );
  }
}
