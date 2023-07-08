import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ettamn/components.dart';
import 'package:ettamn/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Doctorview.dart';
import 'home_screen.dart';
import 'main_profile.dart';

class mypatients extends StatefulWidget {
  const mypatients({Key? key}) : super(key: key);

  @override
  State<mypatients> createState() => _mypatientsState();
}

class _mypatientsState extends State<mypatients> {
  int counter = 0;
  bool showaddnewpatient = true;
  var namecont= TextEditingController();
  var des= TextEditingController();
  var id= TextEditingController();


  get name => null;

  Widget build(BuildContext context) {
    int? name;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Stack(
          children: [
            Column(
              children: [
                if(showaddnewpatient)
                  Padding(
                  padding: const EdgeInsets.only(top:32.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffA4D7FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                    Row(
                      children: [
                           Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text(
                           'My Patients',
                           style: TextStyle(
                             fontSize: 24,
                             fontWeight: FontWeight.w700,
                             color: Color.fromRGBO(255, 255, 255, 0.83),
                           ),
                         ),
                       ),
                        Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Color.fromRGBO(69, 93, 154, 1),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                            child: IconButton(
                              onPressed: () {
                                namecont.text=("");
                                id.text=("");
                                des.text=("");

                                setState(() {
                                  counter = 0;
                                  showaddnewpatient=!showaddnewpatient;
                                  showContainer = !showContainer;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Color.fromRGBO(69, 93, 154, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        child: Text("Add new patient",
                            style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 255, 255, 0.83),)),
                      ),
                          Form(child:
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                              child: Container(height: 55,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 1,offset: Offset(0, 4),)],borderRadius: BorderRadius.circular(20), color: Colors.white),
                                child:
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                  child: TextFormField(
                                    controller: namecont,
                                    style: const TextStyle(
                                      color: Color(0xff7A8D9C),
                                      fontSize: 24 ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7A8D9C),
                                        ),
                                      ),
                                      hintText: 'Name',
                                      hintStyle: TextStyle(
                                        color: Color(0xff7A8D9C),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null; // Password is valid
                                    },
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
                                    controller: id,
                                    style: const TextStyle(
                                      color: Color(0xff7A8D9C),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff7A8D9C),
                                        ),
                                      ),
                                      hintText: 'ID',
                                      hintStyle: TextStyle(
                                        color: Color(0xff7A8D9C),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null; // Password is valid
                                    },
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
                                    controller: des,
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
                                      hintText: 'Description',
                                      hintStyle: TextStyle(
                                        color: Color(0xff7A8D9C),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null; // Password is valid
                                    },
                                  ),
                                ),
                              ),
                            ),

                          ],
                          )),
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
                                        patient.add(
                                          {
                                            'name' : namecont.text,
                                            'id' : id.text,
                                            'dis' : des.text,
                                          },
                                        );
                                      });_addContainer();
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
                Expanded(
                  child: ListView.builder(
                    itemCount: patient.length,
                    itemBuilder: (BuildContext context, int index) {
                      return
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          ElevatedButton(
                            onPressed: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Doctorview()),
                          );},
                            style: ButtonStyle( shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),),backgroundColor: MaterialStatePropertyAll(Color(0xffA4D7FF))),
                            child:
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 25,
                                        child: Image(
                                          image: AssetImage("assets/images/Vector1.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Name : ${patient[index]['name']}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Color.fromRGBO(255, 255, 255, .83),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(thickness: 1),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
                                  child: Text(
                                    "${patient[index]['dis']}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(255, 255, 255, 0.83),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        );
                    },
                  ),
                ),
              ],
            ),
            if (showContainer)
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.white,
        color: Color(0xffA4D7FF),
        items: [
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
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

    patientcontainers += 1;

  }

  void _goToHomePage(BuildContext context) {
    setState(() {
      showContainer = false;
    });
    if (showContainer == true) {
      showContainer = false;
      if (counter > 0) {
        counter++;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } else
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
  }

  void _goToSettingsPage(BuildContext context) {
    setState(() {
      showContainer = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Settings()),
    );
  }

  void _goToProfilePage(BuildContext context) {
    setState(() {
      showContainer = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainProfile()),
    );
  }

  void _goToNotificationsPage(BuildContext context) {
    setState(() {
      counter = 0;
      showContainer = !showContainer;
    });
  }
}