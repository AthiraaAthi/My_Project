import 'package:flutter/material.dart';
import 'package:my_project/view/requests_page/requests.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController NameController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController QuantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 141, 55),
        title: const Text(
          "WF Pludge",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 37, 141, 55),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 600,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Color.fromARGB(255, 161, 158, 158),
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
                Text(
                  "Alice",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                // Divider(
                //   thickness: 1,
                //   color: Colors.grey,
                // ),
                InkWell(
                  child: ListTile(
                    selectedColor: Colors.black,
                    leading: Icon(
                      Icons.person,
                      size: 35,
                    ),
                    title: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    // trailing: InkWell(
                    //   onTap: () {
                    //     showModalBottomSheet(
                    //         context: context,
                    //         builder: (context) => Container(
                    //               height: 200,
                    //               child: ExpansionTile(
                    //                 title: Text("Your Profile Information"),
                    //                 children: [
                    //                   Text(
                    //                     "Name:Alice",
                    //                     style: TextStyle(
                    //                         fontSize: 20,
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                   SizedBox(
                    //                     height: 15,
                    //                   ),
                    //                   Text(
                    //                     "Mobile:123456789",
                    //                     style: TextStyle(fontSize: 20),
                    //                   ),
                    //                   SizedBox(
                    //                     height: 20,
                    //                   ),
                    //                   OutlinedButton(
                    //                       onPressed: () {
                    //                         Navigator.pop(context);
                    //                       },
                    //                       child: Text("OK"))
                    //                 ],
                    //               ),
                    //             ));
                    //   },
                    //   child: Icon(
                    //     Icons.arrow_drop_down,
                    //     size: 35,
                    //   ),
                    // ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                HomeScreenWidget(
                    ontap: () {},
                    correstitle: "About",
                    corresicon: Icon(
                      Icons.info_outline,
                      size: 35,
                    )),
                SizedBox(
                  height: 10,
                ),
                HomeScreenWidget(
                  ontap: () {},
                  correstitle: "Settings",
                  corresicon: Icon(
                    Icons.settings,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                HomeScreenWidget(
                  ontap: () {},
                  correstitle: "Requests",
                  corresicon: Icon(Icons.insert_chart_outlined),
                ),
                SizedBox(
                  height: 10,
                ),
                HomeScreenWidget(
                  ontap: () {},
                  correstitle: "Share",
                  corresicon: Icon(Icons.share),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/tree.jpeg")
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                                    ElevatedButton(
                                        onPressed: () {}, child: Text("save"))
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
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/green_basket.png"),
                              fit: BoxFit.fill,
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
                                    ElevatedButton(
                                        onPressed: () {}, child: Text("save"))
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
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("assets/images/e-waste_.png"),
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
        ],
      ),
    );
  }
}
