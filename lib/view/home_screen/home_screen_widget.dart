import 'package:flutter/material.dart';

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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: corresicon,
      ),
    );
  }
}
