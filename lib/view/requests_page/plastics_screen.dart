import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';

import 'package:my_project/view/requests_page/request_screen_widget.dart';

class PlasticScreen extends StatelessWidget {
  PlasticScreen({super.key});
  CollectionReference UserCollection =
      FirebaseFirestore.instance.collection("Users");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: StreamBuilder(
            stream: UserCollection.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot Users = snapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 153, 245, 163),
                            border: Border.all(color: ColorConstant.MainGreen),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User : ${Users["Name"]}",
                                style: GoogleFonts.acme(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                                //TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Contact No : ${Users["Phone"]}",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Address : ${Users["Address"]}",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Quantity : ${Users["Quantity"]}",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 110,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Date of Request : ${Users["Date"]}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: Text("No Data"),
                );
              }
            }),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(15),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         RequestScreenWidget(
      //             name: "Alice",
      //             Phone: "6413287642",
      //             address:
      //                 "ABC street London,House Number 101,near london Bridge,A13 villa",
      //             quantity: "1kg",
      //             date: "26-10-2022"),
      //         RequestScreenWidget(
      //             name: "John",
      //             Phone: "6413287642",
      //             address:
      //                 "ABC street London,House Number 101,near london Bridge,A13 villa",
      //             quantity: "1kg",
      //             date: "26-10-2022"),
      //         RequestScreenWidget(
      //             name: "Leo",
      //             Phone: "6413287642",
      //             address:
      //                 "ABC street London,House Number 101,near london Bridge,A13 villa",
      //             quantity: "1kg",
      //             date: "26-10-2022"),
      //         RequestScreenWidget(
      //             name: "Patrick",
      //             Phone: "6413287642",
      //             address:
      //                 "ABC street London,House Number 101,near london Bridge,A13 villa",
      //             quantity: "1kg",
      //             date: "26-10-2022"),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
