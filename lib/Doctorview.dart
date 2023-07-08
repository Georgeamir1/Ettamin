// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ettamn/Ptescriptions.dart';
import 'package:ettamn/labs.dart';
import 'package:ettamn/main_profile.dart';
import 'package:ettamn/prescription%20view.dart';
import 'package:flutter/material.dart';
import 'components.dart';
import 'health profile view.dart';
import 'health_profile.dart';
import 'labs view.dart';
import 'settings.dart';
class Doctorview extends StatefulWidget {
  const Doctorview({super.key});

  @override
  State<Doctorview> createState() => _DoctorviewState();
}

class _DoctorviewState extends State<Doctorview> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
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
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text(
                            'Name: ${FullName.text}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Id: ${nationalId.text}',
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
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 90),
                    child: Row(
                      children: [
                        SizedBox(width: 300,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),

                            child: ElevatedButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const HealthProfileview()),
                              ),
                            ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Health \n profile ",
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        "assets/images/health.png",

                                      ),
                                    ),
                                  ),
                                ],
                              ),style: ElevatedButton.styleFrom(primary: Color(0xffA4D7FF),),),
                          ),
                        ),
                        SizedBox(width: 18,),
                        SizedBox(width: 300,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),

                            child: ElevatedButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const prescriptionview()),
                              ),
                            ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Prescriptions",
                                    style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "assets/images/perscriptions.png",

                                    ),
                                  ),
                                ],
                              ),style: ElevatedButton.styleFrom(primary: Color(0xffA4D7FF),),),
                          ),
                        ),
                        SizedBox(width: 18,),
                        SizedBox(width: 300,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),

                            child: ElevatedButton(onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const labsview()),
                              ),
                            ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Labs",
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      "assets/images/labs.png",

                                    ),
                                  ),
                                ],
                              ),style: ElevatedButton.styleFrom(primary: Color(0xffA4D7FF),),),
                          ),
                        ),
                        SizedBox(width: 18,),


                      ],
                    ),
                  ),
                ),

              ],
            ),
            if (showContainer)
              Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Expanded(
                    child: Container(margin: EdgeInsets.only(top: 400,left: 30,right: 20),
                      decoration: BoxDecoration(boxShadow: List.filled(3, BoxShadow(blurStyle: BlurStyle.inner)),borderRadius: BorderRadius.circular(30),color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [

                            ]),
                      ),

                    ),
                  ),
                ],
              ),
          ],

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Container(
        width: 120,
        height: 120,
        margin: const EdgeInsets.only(top: 80),
        decoration:
        const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: FloatingActionButton(

          elevation: 0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => const MainProfile()),
            ),
          ),
          child: Image.asset(
            "assets/images/Vector1.png",
            width: 100,
            height: 100,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(index: 1,
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
    );
  }

  void _goToHomePage (BuildContext context) {
    // Navigate to the settings page
    setState(() {
      showContainer = false;
// set the boolean to true when button is pressed
    });
    // TODO: Implement navigation to the settings page
  }

  void _goToSettingsPage(BuildContext context) {
    // Navigate to the home page
    setState(() {
      showContainer = false;
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
      showContainer = false;
// set the boolean to true when button is pressed
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainProfile()),
    );
  }

  void _goToNotificationsPage(BuildContext context) {
    setState(() {
      showContainer = !showContainer; // set the boolean to true when button is pressed
    });

  }
}

