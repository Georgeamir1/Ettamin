import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ettamn/home_screen.dart';
import 'package:ettamn/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  bool _showContainer = false;
  bool Thyroid = false;
  bool Gastrointestinal = false;
  bool Asthma = false;
  bool Diabetes = false;
  bool Hypertension = false;
  bool Cardiology = false;
  @override
  Widget build(BuildContext context) {
    String? Chronic_diseases;
    String? Blood_type;
    String? Emergency_nubmer;
    String? Notes;
    String? Nationsl_ID;
    String? Address;
    String? Phone_Number;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  color: const Color(0xffA4D7FF),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Id:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color(0xffA4D7FF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chronic_diseases : $Chronic_diseases',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Blood_type : $Blood_type',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Emergency_nubmer : $Emergency_nubmer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Notes : $Notes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Nationsl_ID : $Nationsl_ID ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Address : $Address',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Phone_Number : $Phone_Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: Container(
          width: 120,
          height: 120,
          margin: const EdgeInsets.only(top: 100),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Image.asset(
              "assets/images/Vector1.png",
              width: 100,
              height: 100,
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(index: 2,
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
    ));
  }

  void _goToHomePage (BuildContext context) {
    // Navigate to the settings page
    setState(() {
      _showContainer = false;
// set the boolean to true when button is pressed
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
    // TODO: Implement navigation to the settings page
  }

  void _goToSettingsPage(BuildContext context) {
    // Navigate to the home page
    setState(() {
      _showContainer = false;
// set the boolean to true when button is pressed
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Settings()),
    );
  }

  void _goToProfilePage(BuildContext context) {
    // Navigate to the profile page
    setState(() {
      _showContainer = false;
// set the boolean to true when button is pressed
    });
  }

  void _goToNotificationsPage(BuildContext context) {
    setState(() {
      _showContainer = !_showContainer; // set the boolean to true when button is pressed
    });

  }

}
