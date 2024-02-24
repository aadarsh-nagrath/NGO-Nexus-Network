import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyasa/src/repository/authentication_repository/auth_repo.dart';


class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  

  //TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from Design & it will do the rest
  void registerUser(String email, String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password)
      .then((String? error) {
        if (error != null) {
          Get.showSnackbar(GetSnackBar(message: error.toString()));
        }
      })
      .catchError((error) {
        // Handle any potential exceptions
      });
  }


}