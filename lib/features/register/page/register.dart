import 'package:TODO/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static const String routeName = 'Register';
  var forKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffDFECDB),
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Create Account'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: forKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: mediaQuery.height * 0.2),

                  //full Name
                  Text(
                    'Full name',
                    style: theme.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: nameController,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "you must enter your name";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Enter Your name',
                    hintColor: Colors.grey.shade700,
                    suffixWidget: const Icon(Icons.person),
                  ),

                  // E-mail
                  const SizedBox(height: 30),
                  Text(
                    'E-mail',
                    style: theme.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  CustomTextField(
                    controller: emailController,
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "you must enter your e-mail address";
                      }
                      var regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (!regex.hasMatch(value)) {
                        return "Invalid e-mail";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Enter Your E-mail address',
                    hintColor: Colors.grey.shade700,
                    suffixWidget: const Icon(Icons.mail_rounded),
                  ),

                  // Password
                  const SizedBox(height: 30),
                  Text(
                    'Password',
                    style: theme.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  CustomTextField(
                    controller: passwordController,
                    onChanged: (value) {
                      print(passwordController.text);
                    },
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter password";
                      }
                      var regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (!regex.hasMatch(value)) {
                        return "The password must contain \n * Minimum 1 Upper case\n * Minimum 1 lowercase \n * Minimum 1 Numeric Number \n * Minimum 1 Special Character  \n * Minimum 8 letter";
                      }
                      return null;
                    },
                    isPassword: true,
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Enter Your password',
                    hintColor: Colors.grey.shade700,
                    suffixWidget: const Icon(Icons.mail_rounded),
                  ),

                  // Confirm password
                  const SizedBox(height: 30),
                  Text(
                    'Confirm password',
                    style: theme.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  CustomTextField(
                    onValidate: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "you must enter confirm password";
                      }
                      if (value != passwordController.text) {
                        return "password not matched";
                      }
                      return null;
                    },
                    controller: confirmController,
                    isPassword: true,
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Enter Your password',
                    hintColor: Colors.grey.shade700,
                    suffixWidget: const Icon(Icons.mail_rounded),
                  ),

                  // Create Button
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      backgroundColor: theme.primaryColor,
                    ),
                    onPressed: () {
                      if (forKey.currentState!.validate()) {
                        print("validate");
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Create Account',
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
