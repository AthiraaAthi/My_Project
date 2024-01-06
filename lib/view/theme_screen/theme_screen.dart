import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';

class ThemeScreen extends StatelessWidget {
  ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.MainGreen,
        title: Text(
          "Theme ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all()),
                child: Icon(
                  Icons.light_mode,
                  size: 35,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all()),
                child: Icon(
                  Icons.dark_mode,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
