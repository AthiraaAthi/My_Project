import 'package:flutter/material.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';

class HomeScreenWidget extends StatelessWidget {
  HomeScreenWidget(
      {super.key,
      required this.correstitle,
      required this.corresicon,
      required this.ontap});
  String correstitle;
  Icon corresicon;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        title: Text(
          correstitle,
          style: FontConstant.myMainFonts,
        ),
        leading: corresicon,
      ),
    );
  }
}
