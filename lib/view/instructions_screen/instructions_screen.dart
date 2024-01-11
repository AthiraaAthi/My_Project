import 'package:flutter/material.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';
import 'package:my_project/utils/image_constant/image_constant.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Guide",
          style: FontConstant.myFonts,
        ),
        backgroundColor: ColorConstant.MainGreen,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                "Welcome to Wastico !",
                style: FontConstant.Heading,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "On the HomeScreen:",
                style: FontConstant.subHeadings,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(ImageConstant.Home),
              SizedBox(
                height: 10,
              ),
              Text(
                '''1.Click on the Plastic/E-waste Category
                 
                ''',
                style: FontConstant.Sentence,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(ImageConstant.ontap),
              SizedBox(
                height: 20,
              ),
              Text(
                '''
2.fill in your Details for sending it to its authority owners
                ''',
                style: FontConstant.Sentence,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "On the Requests Screen:",
                style: FontConstant.subHeadings,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(ImageConstant.requests),
              SizedBox(
                height: 20,
              ),
              Text(
                '''3.Your Details corresponding to the categoty will appear here..
                 
                ''',
                style: FontConstant.Sentence,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "On the GuideScreen:",
                style: FontConstant.subHeadings,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(ImageConstant.Guide),
              SizedBox(
                height: 20,
              ),
              Text(
                '''4.A mini Do's and Don'ts will be Provided for letting know its importance to users
                 
                ''',
                style: FontConstant.Sentence,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "On the Settings Screen:",
                style: FontConstant.subHeadings,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(ImageConstant.Settings),
              SizedBox(
                height: 30,
              ),
              Text(
                '''
 you'll find a User Guide, About, Rating, Share
                ''',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
