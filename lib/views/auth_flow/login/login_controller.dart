import 'package:flutter/material.dart';
import 'package:flutter_core/core/utils/validation_mixin.dart';
import 'package:flutter_core/data/repositories/auth_repository.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with ValidationMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  final RxBool isLoading = false.obs;
  final AuthRepository authRepository = AuthRepository();

  Future<void> onLogin() async {
    FocusManager.instance.primaryFocus?.unfocus();

    // Map<String, dynamic> data = {};
    // isLoading(true);
    // final result = await authRepository.signIn(data: data);
    // isLoading(false);

    // result.when((value) async {}, (error) => AppSnackBar.error(message: error));
  }
}
