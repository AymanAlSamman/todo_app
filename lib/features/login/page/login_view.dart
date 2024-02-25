import 'package:TODO/core/widgets/custom_text_filed.dart';
import 'package:TODO/features/register/page/register.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  static const String routeName = 'Login';

  const LoginView({super.key});

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
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: mediaQuery.height * 0.2),
                Text(
                  'Welcome Back!',
                  textAlign: TextAlign.start,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 50),
                Text(
                  'E-mail',
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.normal),
                ),

                // E-Mail
                CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Enter Your e-mail address',
                  hintColor: Colors.grey.shade700,
                  suffixWidget: const Icon(Icons.mail_rounded),
                ),

                const SizedBox(height: 30),

                Text(
                  'Password',
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.normal),
                ),

                // Password
                CustomTextField(
                  isPassword: true,
                  maxLines: 1,
                  hint: 'Enter Your password',
                  hintColor: Colors.grey.shade700,
                  suffixWidget: const Icon(Icons.mail_rounded),
                ),

                const SizedBox(height: 20),

                //Forget Password
                TextButton(
                  style:
                      TextButton.styleFrom(alignment: const Alignment(-1, 30)),
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: theme.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Login Button
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

                const SizedBox(height: 35),

                // Create account
                Row(
                  children: [
                    Text(
                      'OR',
                      style: theme.textTheme.bodyLarge!.copyWith(fontSize: 17),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterView.routeName);
                      },
                      child: Text(
                        'Create My Account',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
