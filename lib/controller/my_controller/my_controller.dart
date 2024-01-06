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

  CollectionReference EUserCollection =
      FirebaseFirestore.instance.collection("Euser");
  Future addEData(
      {required String EUserName,
      required String EUserPhone,
      required String EUserAddress,
      required String EWasteQuantity,
      required String ERequestDate}) async {
    EUserCollection.add({
      "Name": EUserName,
      "Phone": EUserPhone,
      "Address": EUserAddress,
      "Quantity": EWasteQuantity,
      "Date": ERequestDate
    });
  }

  CollectionReference ProfileCollection =
      FirebaseFirestore.instance.collection("ProfileName");
  Future addProfile({
    required String ProfileUserName,
  }) async {
    EUserCollection.add({
      "Name": ProfileUserName,
    });
  }

  //name,phone,address,quantity,date
}
