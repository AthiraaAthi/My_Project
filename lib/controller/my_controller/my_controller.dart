import 'package:cloud_firestore/cloud_firestore.dart';

class MyController {
  CollectionReference UserCollection =
      FirebaseFirestore.instance.collection("Users");
  Future addData(
      {required String UserName,
      required String UserPhone,
      required String UserAddress,
      required String WasteQuantity,
      required String RequestDate}) async {
    UserCollection.add({
      "Name": UserName,
      "Phone": UserPhone,
      "Address": UserAddress,
      "Quantity": WasteQuantity,
      "Date": RequestDate
    });
  }

  //name,phone,address,quantity,date
}
