import 'package:cloud_firestore/cloud_firestore.dart';

class MyController {
  CollectionReference UserCollection =
      FirebaseFirestore.instance.collection("Users");
  Future addData({
    required String UserName,
    required String UserPhone,
    required String UserAddress,
    required String WasteQuantity,
    required String RequestDate,
    required String Type,
  }) async {
    UserCollection.add({
      "Name": UserName,
      "Phone": UserPhone,
      "Address": UserAddress,
      "Quantity": WasteQuantity,
      "Date": RequestDate,
      "Type": "plastic",
    });
  }

  // CollectionReference EUserCollection =
  //     FirebaseFirestore.instance.collection("Euser");
  Future addEData({
    required String EUserName,
    required String EUserPhone,
    required String EUserAddress,
    required String EWasteQuantity,
    required String ERequestDate,
    required String Type,
  }) async {
    UserCollection.add({
      "Name": EUserName,
      "Phone": EUserPhone,
      "Address": EUserAddress,
      "Quantity": EWasteQuantity,
      "Date": ERequestDate,
      "Type": "E-waste"
    });
  }

  // CollectionReference ProfileCollection =
  //     FirebaseFirestore.instance.collection("ProfileName");
  // Future addProfile({
  //   required String ProfileUserName,
  // }) async {
  //   EUserCollection.add({
  //     "Name": ProfileUserName,
  //   });
  // }

  //name,phone,address,quantity,date
}

class ResponseController {
  CollectionReference responseCollection =
      FirebaseFirestore.instance.collection('ResponseNotification');

  Future addData({
    required String cusname,
    required String cusmob,
    required String location,
    required String quantity,
    required String wastetype,
    String masname = "",
    String masmob = "",
    String date = "",
    String time = "",
    String reason = "",
    required String value,
  }) async {
    responseCollection.add({
      "customerName": cusname,
      "customerMobile": cusmob,
      "location": location,
      "quantity": quantity,
      "wasteType": wastetype,
      "masterName": masname,
      "masterMobile": masmob,
      "date": date,
      "time": time,
      "reason": reason,
      "value": value
    });
  }
}
