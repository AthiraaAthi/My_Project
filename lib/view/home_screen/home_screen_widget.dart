import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  HomeScreenWidget(
      {super.key, required this.correstitle, required this.corresicon});
  String correstitle;
  Icon corresicon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        correstitle,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      leading: corresicon,
    );
  }
}
