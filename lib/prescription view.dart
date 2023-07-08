import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ettamn/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components.dart';
import 'home_screen.dart';
import 'main_profile.dart';

class prescriptionview extends StatefulWidget {
  const prescriptionview({super.key});

  @override
  State<prescriptionview> createState() => _prescriptionviewState();
}

class _prescriptionviewState extends State<prescriptionview> {
  bool showaddnewpatient = true;

  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
              children: [
                if(showaddnewpatient)
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffA4D7FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                        child: Row(
                          children: [
                            const Text(
                              'Prescription',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            if(doctor)
                              FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  counter = 0;
                                  showaddnewpatient=!showaddnewpatient;
                                  showContainer = !showContainer;
                                });
                              },
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: () {setState(() {

                                  showaddnewpatient=!showaddnewpatient;

                                  faimily.add({
                                    'date': (' ${date.day}/${date.month}/${date.year}'),
                                    'Report' : Report.text,
                                  },);
                                });},
                                icon: Icon(
                                  Icons.add_outlined,
                                  color: Color.fromRGBO(69, 93, 154, 1),
                                ),
                              ),
                              mini: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if(!showaddnewpatient)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32.0),
                    child: Container(width: double.infinity,decoration: BoxDecoration(color:  Color(0xffA4D7FF),borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          children:
                          [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Text("Add new report",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(255, 255, 255, 0.83),)),
                            ),
                            Form(child:
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                                  child: Container(height: 55,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 4),)],borderRadius: BorderRadius.circular(20), color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                      child: TextFormField(
                                        controller: Report,
                                        style: const TextStyle(
                                          color: Color(0xff7A8D9C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        keyboardType: TextInputType.text,
                                        decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff7A8D9C),
                                            ),
                                          ),
                                          hintText: 'treatment name',
                                          hintStyle: TextStyle(
                                            color: Color(0xff7A8D9C),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                                  child: Container(height: 55,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 4),)],borderRadius: BorderRadius.circular(20), color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                      child: TextFormField(
                                        controller: Report,
                                        style: const TextStyle(
                                          color: Color(0xff7A8D9C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff7A8D9C),
                                            ),
                                          ),
                                          hintText: 'Frequency in day',
                                          hintStyle: TextStyle(
                                            color: Color(0xff7A8D9C),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                                  child: Container(height: 55,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 4),)],borderRadius: BorderRadius.circular(20), color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                      child: TextFormField(
                                        controller: Report,
                                        style: const TextStyle(
                                          color: Color(0xff7A8D9C),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff7A8D9C),
                                            ),
                                          ),
                                          hintText: 'duration by day',
                                          hintStyle: TextStyle(
                                            color: Color(0xff7A8D9C),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 8),
                              child: Row(
                                children:
                                [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: ElevatedButton(style: ButtonStyle( shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),backgroundColor: MaterialStatePropertyAll(Colors.green,)),
                                          onPressed: () {
                                            setState(() {
                                              showaddnewpatient=!showaddnewpatient;
                                              medicalH.add(
                                                {
                                                  'date': (' ${date.day}/${date.month}/${date.year}'),

                                                  'Report' : Report.text,
                                                },
                                              );
                                            });_addContainer();
                                            _addContainers();
                                          }, child: Text('Submit',style: TextStyle(fontSize: 16),)),
                                    ),
                                  ), Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: ElevatedButton(style: ButtonStyle( shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    ),backgroundColor: MaterialStatePropertyAll(Color(0xffDD3C3C),)),onPressed: ()
                                    {
                                      setState(() {
                                        showaddnewpatient=!showaddnewpatient;

                                      });
                                    }, child: Text('Cancel',style: TextStyle(fontSize: 16),)),
                                  ),
                                )
                                ],),
                            )
                          ]
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffA4D7FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20.0),
                          child: Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  'assets/images/Vector1.png',
                                ),
                                radius: 50,
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name : ${FullName.text}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'ID :${nationalId.text}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 6),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/Vector111.png',
                                          width: 15,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '$blodtype',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 6),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.male_outlined,color: Colors.indigo , size: 20),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '$gender',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(164, 215, 255, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  height: 115,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 3,
                            color: Color.fromRGBO(26, 37, 81, 0.21),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'concor 10 mg ',
                                  style: TextStyle(
                                    color: Color.fromRGBO(81, 120, 152, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'x',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'd',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'for',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '6',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'w',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'After eating',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Bi-Alcofan 150 mg',
                                  style: TextStyle(
                                    color: Color.fromRGBO(81, 120, 152, 1),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'x',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'd',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'for',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '6',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'w',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'When it is needed',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(81, 120, 152, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: treatments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffA4D7FF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${treatments[index]['date']} ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color.fromRGBO(255, 255, 255, .83),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${treatments[index]['Report']}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 0.83),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
      bottomNavigationBar: CurvedNavigationBar(index: 1,
        backgroundColor: Colors.white,
        color: Color(0xffA4D7FF),
        items:  [
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          Icon(
            Icons.article_outlined,
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
  void _addContainer() {

    treatmentscontainers += 1;

  } void _addContainers() {

    treatmentscountercontainers += 1;

  }
  void _goToHomePage (BuildContext context) {
    setState(() {

    });
    // Navigate to the settings page
    if (showContainer == true) {
      showContainer = false;
      if(counter > 0 ) {
        counter++;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    }
    else
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
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
      counter=0;
      showContainer = !showContainer; // set the boolean to true when button is pressed
    });

  }

}
