import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  height: 30,
                ),
                InkWell(
                  child: ListTile(
                    selectedColor: Colors.black,
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                  ),
                  onTap: () {
                    ExpansionTile(
                      title: Text("About Your Profile"),
                    );
                  },
                )
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
          // const SizedBox(
          //   height: 10,
          // ),
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       SizedBox(
          //         width: 60,
          //       ),
          //        Text(
          //          "Plastic",
          //          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //        ),
          //        SizedBox(
          //          width: 130,
          //        ),
          //        Text(
          //          "E-Waste",
          //          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //        ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
