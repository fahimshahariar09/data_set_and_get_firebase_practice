import 'dart:developer';

import 'package:firebase_practice/controller/firebase_api/auth/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();


  signinFun() async {
    log("...........suru...........");
    await SignInService.signinService(
        name: nameController.text, pass: passController.text);
    log("............ses..............");
  }
}
