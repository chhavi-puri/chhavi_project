import 'package:dbdummy/model/signup_model.dart';
import 'package:dbdummy/routes/routes.dart';
import 'package:dbdummy/screens/signupsignin/tabcontroller.dart';
import 'package:dbdummy/screens/signupsignin/widget/signup.dart';
import 'package:dbdummy/services/firebasesignup_services.dart';
import 'package:flutter/cupertino.dart';

onPressedSignup(BuildContext context, SignUpModel signUpModel) {
  final formState = ksigupformKey.currentState;
  if (formState.validate()) {
    formState.save();
    print('inside if statement');
    try {
      userSignup(context, signUpModel);
    } catch (e) {
      print(e.message);
    }
  }
}
