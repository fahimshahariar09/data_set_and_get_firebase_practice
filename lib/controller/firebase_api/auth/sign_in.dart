import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class  SignInService {
  static Future<bool> signinService({required String name,required String pass}) async{
    try {

      var data = {
        "name": name,
        "pass":pass
      };

      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
     // await firebaseFirestore.collection("userinfo").add(data);
      var date =DateTime.now();
      await firebaseFirestore.collection("userinfo").doc(date.toString().substring(0,11)).collection("collectionPath").add(data);
      return true;
    } catch (e) {
      log("error :$e");
    }
    return false;
  }
}
