import 'package:flutter/material.dart';

import '../../../helpers/app_styles.dart';
import 'login_view_fields.dart';
import 'login_view_header.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginViewHeader(),
        LoginViewFields(),
        SizedBox(height: 16),
        Text('Forgot Password?', style: AppStyles.font14CustomGreyW400,),
        SizedBox(height: 16),
        Text('Sign Up', style: AppStyles.font14CustomGreyW400,),
      ],
    );
  }
}
