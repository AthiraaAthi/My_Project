import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';

class ResponseScreen extends StatelessWidget {
  ResponseScreen({super.key});
  CollectionReference responseCollection =
      FirebaseFirestore.instance.collection('ResponseNotification');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.MainGreen,
          title: Text("Responses"),
        ),
        body: StreamBuilder(
          stream: responseCollection.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot requests = snapshot.data!.docs[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: ColorConstant.MainGreen),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Responses",
                            style: GoogleFonts.acme(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            //TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Name: ${requests['customerName']}",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Mobile : ${requests['customerMobile']}",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "customer location : ${requests['location']}",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
              );
            } else {
              return Center(
                child: Text(
                  "no data found",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              );
            }
          },
        ));
  }
}
