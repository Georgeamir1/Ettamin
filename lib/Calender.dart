import 'package:ettamn/settings.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:table_calendar/table_calendar.dart';

import 'main_profile.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  String? nameOfEvent;
  bool ratioIsChecked = false;
  bool _showContainer = false;

  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: [
                TableCalendar(
                  locale: "en_us",
                  rowHeight: 60,
                  focusedDay: today,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  firstDay: DateTime.utc(2001, 01, 01),
                  lastDay: DateTime.utc(2030, 01, 01),
                  onDaySelected: _onDaySelected,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffA4D7FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Graduation Project',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  height: 105,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffA4D7FF),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 15),
                        child: Text(
                          "Notes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child:  Radio(
                                value: "Write Notes",
                                groupValue: ratioIsChecked,
                                onChanged: (addNote) {
                                  setState(() {
                                    if (ratioIsChecked) {
                                      addNote = true;
                                    }
                                  });
                                },
                              ),
                            ),

                            Container(
                              width: 250,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Tap to add a task',
                                  hintStyle: TextStyle(color: Colors.white)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
    Icons.calendar_month,
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
      _showContainer = false;
// set the boolean to true when button is pressed
    });
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
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainProfile()),
    );
  }

  void _goToNotificationsPage(BuildContext context) {
    setState(() {
      _showContainer = !_showContainer; // set the boolean to true when button is pressed
    });

  }

    }
