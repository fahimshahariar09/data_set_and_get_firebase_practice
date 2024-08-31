import 'package:firebase_practice/controller/firebase_controller/auth/sign_in.dart';
import 'package:firebase_practice/view/common_widget/common_button.dart';
import 'package:firebase_practice/view/screen/auth/widget/name_text_field.dart';
import 'package:firebase_practice/view/screen/auth/widget/pass_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController =Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: Text("User info"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NameTextField(nameController: signInController.nameController,),
                SizedBox(height: 15,),
                PassTextField(passController: signInController.passController,),
                SizedBox(height: 20,),
                CommonButton(buttonName: "Sign In ", onTap: (){
                  signInController.signinFun();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
