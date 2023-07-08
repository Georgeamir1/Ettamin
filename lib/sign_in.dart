import 'package:flutter/material.dart';
import 'components.dart';
import 'home_screen.dart';
import 'forgot.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool ischecked = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Expanded(
                child: Padding(
                  padding:
                  EdgeInsets.only(top: 56.0, bottom: 32),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/lock.png'),
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39.0),
                  color: const Color(0xffA4D7FF),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                      ),
                      child: Text(
                        'Welcome back',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        controller: emailController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffE7F3FFFF),
                            ),
                          ),
                          labelText: 'Email or Phone Number',
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
                    ),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        controller: passwordController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        keyboardType: TextInputType.text,
                        obscureText: true,
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
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: .7,
                            child: Checkbox(
                                overlayColor:
                                MaterialStateProperty.all(Colors.white),
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                value: ischecked,
                                onChanged: (newBool) {
                                  setState(() {
                                    ischecked = newBool!;
                                  });
                                }),
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgot(),
                                ),
                              );
                            },
                            child: const Text(
                              'forgot password?',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
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

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Transform.scale(
                    scale: .7,
                    child: Checkbox(
                        overlayColor:
                        MaterialStateProperty.all(Colors.white),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        value: doctor,
                        onChanged: (newBool) {
                          setState(() {
                            doctor = newBool!;
                          });
                        }),
                  ),
                  const Text(
                    'sign in as a doctor ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 12.0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(39.0),
                          ),
                        ),
                        backgroundColor:
                        MaterialStateProperty.all(const Color(0xffA4D7FF)),
                      ),
                      onPressed: () {
                        // TODO: Implement sign-in logic
                        // You can access the email and password entered by the user using 'emailController.text' and 'passwordController.text' respectively
                        // You can add Firebase authentication logic here to sign in the user
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle( shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.blueGrey)),
                        onPressed: () {}, child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:4.0, bottom: 4),
                          child: const Image(

                            image: AssetImage('assets/images/google.png'),
                            width: 40,
                            height: 40,
                          ),
                        ),Expanded(
                          child: Center(
                              child:  const Text("Continue with Google ",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ), )
                          ),
                        ),

                      ],) ),
                  )
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}