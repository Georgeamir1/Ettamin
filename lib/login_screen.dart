import 'package:ettamn/sign_in.dart';
import 'package:ettamn/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Align(
          alignment: AlignmentDirectional.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Image(

                  image: AssetImage('assets/images/logo.png'),

                ),

                // const SizedBox(height: 30.0),
                const Image(

                  image: AssetImage('assets/images/image.jpg'),
                ),
                const SizedBox(height: 64.0),
                Row(
                  children: [
                    Expanded(

                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 10)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                                side: const BorderSide(
                                    color: Color.fromRGBO(144, 202, 249, 1))),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromRGBO(255, 255, 255, 1)),
                        ),

                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>  SignUpScreen()),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff83B7E2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 10)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromRGBO(144, 202, 249, 1)),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const SignIn()),
                          ),
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
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
                          padding: const EdgeInsets.only(top:6.0, bottom: 6),
                          child: const Image(

                          image: AssetImage('assets/images/google.png'),
                          width: 32,
                          height: 32,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
