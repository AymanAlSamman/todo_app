import 'package:TODO/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static const String routeName = 'Register';

  const RegisterView({super.key});

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
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Login',
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
    );
  }
}
