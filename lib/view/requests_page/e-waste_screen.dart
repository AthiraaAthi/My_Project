import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';

class EwasteScreen extends StatelessWidget {
  EwasteScreen({super.key});
  CollectionReference UserCollection =
      FirebaseFirestore.instance.collection("Users");
  // CollectionReference EUserCollection =
  //     FirebaseFirestore.instance.collection("Euser");

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
                    DocumentSnapshot EUsers = snapshot.data!.docs[index];
                    var value = "${EUsers['Type']}";
                    print("value : ${EUsers['Type']}");
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: value == "E-waste"
                            ? Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 153, 245, 163),
                                    border: Border.all(
                                        color: ColorConstant.MainGreen),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        // value == "E-waste"
                                        //     ?
                                        Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "User : ${EUsers["Name"]}",
                                          style: GoogleFonts.acme(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          //TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Contact No : ${EUsers["Phone"]}",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Address : ${EUsers["Address"]}",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Quantity : ${EUsers["Quantity"]}",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 110,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Date of Request : ${EUsers["Date"]}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              )
                            : SizedBox(
                                height: 1,
                              ));
                  },
                );
              } else {
                return Center(
                  child: Text("No Data"),
                );
              }
            }),
      ),

//       Padding(
//         padding: const EdgeInsets.all(15),
//         child: StreamBuilder(
//             stream: UserCollection.snapshots(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   itemCount: snapshot.data!.docs.length,
//                   itemBuilder: (context, index) {
//                     DocumentSnapshot EUsers = snapshot.data!.docs[index];
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         height: 300,
//                         width: 300,
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 153, 245, 163),
//                             border: Border.all(color: ColorConstant.MainGreen),
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "User : ${EUsers["Name"]}",
//                                 style: GoogleFonts.acme(
//                                     fontSize: 25, fontWeight: FontWeight.bold),
//                                 //TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Contact No : ${EUsers["Phone"]}",
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 15, fontWeight: FontWeight.w400),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Address : ${EUsers["Address"]}",
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 15, fontWeight: FontWeight.w400),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Quantity : ${EUsers["Quantity"]}",
//                                 style: GoogleFonts.poppins(
//                                     fontSize: 15, fontWeight: FontWeight.w400),
//                               ),
//                               SizedBox(
//                                 height: 110,
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 children: [
//                                   Text(
//                                     "Date of Request : ${EUsers["Date"]}",
//                                     style: GoogleFonts.poppins(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w400),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               } else {
//                 return Center(
//                   child: Text("No Data"),
//                 );
//               }
//             }),
//       ),
    );
  }
}
