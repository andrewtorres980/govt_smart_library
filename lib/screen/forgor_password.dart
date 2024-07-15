import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:govt_smart_library/controller/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your email address to receive a password reset link.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: MultiValidator([
                RequiredValidator(errorText: 'Email is required'),
                EmailValidator(errorText: 'Enter a valid email address'),
              ]),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (emailController.text.isNotEmpty) {
                  controller.sendPasswordResetEmail(emailController.text);
                } else {
                  Get.snackbar('Error', 'Please enter your email address');
                }
              },
              child: Text('Send Reset Link'),
            ),
          ],
        ),
      ),
    );
  }
}
