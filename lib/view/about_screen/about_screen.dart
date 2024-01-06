import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color_constant/color_constant.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.MainGreen,
        title: Text(
          "About",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''We're dedicated to revolutionizing the way you handle waste. 
Our app is your all-in-one solution for efficient waste disposal, 
recycling tips, and environmental education. Simplifying waste management through user-friendly interfaces, 
innovative tracking systems, and personalized suggestions, 
we aim to empower individuals and communities to make a sustainable impact. 
Join us in creating a cleaner, greener future, one smart disposal decision at a time! 
Embrace a cleaner, more sustainable future with our innovative waste management app. 
Designed to seamlessly integrate into your daily life, our app is a comprehensive solution for efficient waste disposal and eco-conscious living. 
With user-friendly interfaces and intuitive features, managing waste has never been easier.
From offering personalized waste collection schedules tailored to your location to providing insightful tips on proper recycling techniques, our app ensures that every user becomes an eco-hero. 
Track your environmental impact through real-time data and learn about the positive changes you're making in your community.
Empower yourself with knowledge through our educational resources, empowering you to make informed decisions about waste reduction and recycling. 
Whether you're a novice or a seasoned eco-enthusiast, our app guides you towards sustainable habits effortlessly.
Join our community of environmentally conscious individuals and take actionable steps towards a cleaner planet. 
Together, let's transform the way we handle waste, leaving a positive impact on the environment for generations to come.
Download the app today and be a part of the movement towards a greener tomorrow.
      ''',
                  style: GoogleFonts.abel(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
