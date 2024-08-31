import 'package:flutter/material.dart';

class PassTextField extends StatelessWidget {
  const PassTextField({super.key, required this.passController});

  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: "Pass",
      ),
      validator: (value){
        if(value == '' || value == null){
          return "Password can't be empty";
        }
        return null;
      },
    );
  }
}
