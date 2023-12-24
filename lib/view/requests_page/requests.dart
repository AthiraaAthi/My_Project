import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_project/controller/my_controller/my_controller.dart';
import 'package:my_project/view/requests_page/e-waste_screen.dart';
import 'package:my_project/view/requests_page/plastics_screen.dart';

import '../../utils/color_constant/color_constant.dart';

class RequestsScreen extends StatelessWidget {
  RequestsScreen({super.key});
  CollectionReference employeeCollection =
      FirebaseFirestore.instance.collection("Users");

  @override
  Widget build(BuildContext context) {
    MyController MyControllerobj = MyController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.MainGreen,
          title: Text(
            "My Requests",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          bottom:
              TabBar(indicatorColor: Colors.white, indicatorWeight: 5, tabs: [
            Tab(
              text: "Plastic",
            ),
            Tab(
              text: "E-Waste",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            PlasticScreen(),
            EwasteScreen(),
          ],
        ),

        // body: Expanded(
        //   child: StreamBuilder(
        //       stream: employeeCollection.snapshots(),
        //       builder: (context, snapshot) {
        //         if (snapshot.hasData) {
        //           return ListView.builder(
        //               itemCount: snapshot.data!.docs.length,
        //               itemBuilder: (context, index) {
        //                 //document snapshot
        //                 DocumentSnapshot Users = snapshot.data!.docs[index];
        //                 return Container(
        //                   color: ColorConstant.MainGreen,
        //                   child: Column(
        //                     children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.center,
        //                         children: [
        //                           SizedBox(
        //                             height: 30,
        //                           ),
        //                           Text("${Users["Name"]} : -"),
        //                           Text("${Users["Phone"]} : -"),
        //                           Text("${Users["Address"]} : -"),
        //                           Text("${Users["Quantity"]} : -"),
        //                           Text("${Users["Date"]} : -")
        //                         ],
        //                       )
        //                     ],
        //                   ),
        //                 );
        //               });
        //         } else {
        //           return Center(
        //             child: Text("No data"),
        //           );
        //         }
        //       }),
        // ),
      ),
    );
  }
}
