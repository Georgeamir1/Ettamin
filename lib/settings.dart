import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'main_profile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index = 0;
  int counter = 0;
  bool _showContainer = false;
  bool Thyroid = false;
  bool Gastrointestinal = false;
  bool Asthma = false;
  bool Diabetes = false;
  bool Hypertension = false;
  bool Cardiology = false;
  @override
  Widget build(BuildContext context) {
    String? name;
    String? id;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffA4D7FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/Vector1.png',
                              color: Color.fromARGB(255, 5, 62, 109),
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Name: $name',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff517898)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'ID: $id',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff517898)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 3,
                      color: Color(0xffD1D0D0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'preference',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.translate,
                              color: Color(0xff517898),
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                  color: Color(0xff517898),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.dark_mode,
                              color: Color(0xff517898),
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Dark Mode',
                              style: TextStyle(
                                  color: Color(0xff517898),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 3,
                      color: Color(0xffD1D0D0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Setting & Privacy',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock_clock,
                              color: Color(0xff517898),
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Privacy',
                              style: TextStyle(
                                  color: Color(0xff517898),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 3,
                      color: Color(0xffD1D0D0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Help & Support',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.library_books,
                              color: Color(0xff517898),
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Terms & Policies',
                              style: TextStyle(
                                  color: Color(0xff517898),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 3,
                      color: Color(0xffD1D0D0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 213, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                color: Color(0xff5B809E),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_showContainer)
                  Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Expanded(
                        child: Container(margin: EdgeInsets.only(top: 400,left: 30,right: 20),
                          decoration: BoxDecoration(boxShadow: List.filled(3, BoxShadow(blurStyle: BlurStyle.inner)),borderRadius: BorderRadius.circular(30),color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Thyroid ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Thyroid = !Thyroid;
                                            });
                                          }), child: Text('Thyroid',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Gastrointestinal ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Gastrointestinal = !Gastrointestinal;
                                            });
                                          }), child: Text('Gastrointestinal',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Cardiology ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Cardiology = !Cardiology;
                                            });
                                          }), child: Text('Cardiology',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Hypertension ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Hypertension = !Hypertension;
                                            });
                                          }), child: Text('Hypertension',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Diabetes ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Diabetes = !Diabetes;
                                            });
                                          }), child: Text('Diabetes',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                          child: ElevatedButton(style: ButtonStyle(backgroundColor: Asthma ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )
                                          ),onPressed: (() {
                                            setState(() {
                                              Asthma = !Asthma;
                                            });
                                          }), child: Text('Asthma',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: Colors.white)),),
                                        ),
                                      ),
                                    ],
                                  ),

                                ]),
                          ),

                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(index: index,
          backgroundColor: Colors.white,
          color: Color(0xffA4D7FF),
          items:  [
            Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),

          ],
          onTap: (pageIndex) {
            switch (pageIndex) {
              case 0:

                _goToSettingsPage(context);
                break;
              case 1:
                _goToHomePage(context);
                break;
              case 2:
                _goToProfilePage(context);
                break;
              case 3:
                _goToNotificationsPage(context);
                break;
            }
          },
          animationDuration: const Duration(milliseconds: 250),
        ),
      )
    );
  }

  void _goToHomePage (BuildContext context) {
    // Navigate to the settings page

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
  }
  void _goToSettingsPage(BuildContext context) {
    // Navigate to the home page
    setState(() {
      _showContainer = false;
// set the boolean to true when button is pressed
    });
  }

  void _goToProfilePage(BuildContext context) {
    // Navigate to the profile page
    setState(() {
      _showContainer = false;
// set the boolean to true when button is pressed
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainProfile()),
    );
  }

  void _goToNotificationsPage(BuildContext context) {
    setState(() {
      counter=0;
      _showContainer = !_showContainer; // set the boolean to true when button is pressed
    });

  }

}
