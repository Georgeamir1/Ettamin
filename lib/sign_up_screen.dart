import 'package:ettamn/sign_up1.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp1()),
                );
              }
            },
            elevation: 1.0,
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.blueGrey,
              size: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage(
                  "assets/images/logo.png",
                ),
                width: 300,
                height: 220,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39.0),
                  color: const Color.fromRGBO(144, 202, 249, .8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30.0, left: 20),
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(controller: email,
                              style: const TextStyle
                                (
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                 ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            TextFormField(controller: FullName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Full Name',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if ( value!.isEmpty) {
                                  return 'Please enter your Full Name';
                                }
                                if(value.length < 8)
                                  {
                                    return 'Full Name must be at least 8 characters';

                                  }
                                if(value.length > 28)
                                  {
                                    return 'Full Name is too long';

                                  }
                                // Add more validation rules if necessary
                                return null;
                              },
                            ),
                            TextFormField(controller: password,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 8) {
                                  return 'Password must be at least 8 characters';
                                }
                                if (!value.contains(RegExp(r'[A-Z]'))) {
                                  return 'Password must contain at least one uppercase letter';
                                }
                                if (!value.contains(RegExp(r'[a-z]'))) {
                                  return 'Password must contain at least one lowercase letter';
                                }
                                if (!value.contains(RegExp(r'[0-9]'))) {
                                  return 'Password must contain at least one digit';
                                }
                                if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                  return 'Password must contain at least one special character';
                                }
                                return null; // Password is valid
                              },

                            ),
                            TextFormField(controller: confirmPassword,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                if (value != password.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            TextFormField(controller: nationalId,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'National ID',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                                autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your National ID';
                                }

                                // Check if the value contains exactly 14 digits
                                if (!RegExp(r'^\d{14}$').hasMatch(value)) {
                                  return 'Egyptian National ID must have exactly 14 digits';
                                }

                                // Additional checks for specific rules on the first three digits if needed
                                // For example, you can check if the first three digits represent a valid governorate code.

                                return null; // National ID is valid
                              }

                            ),
                            TextFormField(controller: phoneNumber,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Phone Number',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                                autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (String? value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }

                                // Remove any whitespace or special characters from the input
                                value = value?.replaceAll(RegExp(r'\s|\D'), '');

                                // Check if the number is exactly 11 digits long
                                if (value?.length != 11) {
                                  return 'Phone number must be 11 digits';
                                }

                                // Check if the number starts with "01" or "02"
                                if (!value!.startsWith('01') ) {
                                  return 'Invalid phone number format';
                                }

                                // All checks passed, the phone number is valid
                                return null;
                              }
                            ),
                            TextFormField(controller: emergencyNumber,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffE7F3FFFF),
                                  ),
                                ),
                                labelText: 'Emergency Number',
                                labelStyle: TextStyle(
                                  color: Color(0xffE7F3FFFF),
                                  fontSize: 16.0,
                                ),
                              ),
                              autovalidateMode: AutovalidateMode.onUserInteraction,

                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }

                                // Remove any whitespace or special characters from the input
                                value = value?.replaceAll(RegExp(r'\s|\D'), '');

                                // Check if the number is exactly 11 digits long
                                if (value?.length != 11) {
                                  return 'Phone number must be 11 digits';
                                }

                                // Check if the number starts with "01" or "02"
                                if (!value!.startsWith('01')) {
                                  return 'Invalid phone number format';
                                }

                                // Check if the emergency number is the same as the user's regular phone number
                                if (value == phoneNumber) {
                                  return 'Please enter a different emergency number';
                                }

                                // All checks passed, the phone number is valid
                                return null;
                              },
                            ),
                            SizedBox(height: 50,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}