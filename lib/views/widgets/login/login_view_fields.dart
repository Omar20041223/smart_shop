import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../helpers/routes.dart';
import '../../../helpers/validator.dart';
import '../common_widgets/custom_button.dart';
import 'custom_field.dart';

class LoginViewFields extends StatefulWidget {
  const LoginViewFields({super.key});

  @override
  State<LoginViewFields> createState() => _LoginViewFieldsState();
}

class _LoginViewFieldsState extends State<LoginViewFields> {
  bool isPasswordVisible = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomField(
              hintText: 'Email',
              validator: (value) {
                return Validator.emailValidator(value);
              },
            ),
            const SizedBox(height: 24),
            CustomField(
              hintText: 'Password',
              validator: (value) {
                return Validator.passwordValidator(value);
              },
              obscureText: isPasswordVisible,
              suffixIcon: IconButton(
                icon: Icon(isPasswordVisible ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(onTap: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(Routes.wrapperView);
              }
            }, text: 'Login'),
          ],
        ),
      ),
    );
  }
}
