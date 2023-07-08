

import 'package:ettamn/sign_in.dart';
import 'package:flutter/material.dart';

import 'components.dart';
class SignUp1 extends StatefulWidget {
  const SignUp1({Key? key}) : super(key: key);

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {

  int age(DateTime birthDate, date) {
    final now = DateTime.now();
    int age = now.year - birthDate.year;

    if (now.month < birthDate.month) {
      age--;
    } else if (now.month == birthDate.month && now.day < birthDate.day) {
      age--;
    }

    return age;
  }

  @override

  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20,),
        child: Visibility(
          child:
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
if(blodtype != null && gender != null && status != null && age(date, DateTime.now()) > 3 && age(date, DateTime.now()) != 0)
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
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
      body:
      Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/pana.png",
                  ),
                  width:300 ,
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39.0),
                        color: const Color.fromRGBO(144, 202, 249, .8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Gender',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Transform.scale(
                                  scale: .7,
                                  child: Radio(
                                      value: "Male",
                                      groupValue: gender,
                                      onChanged: (val) {
                                        setState(() {
                                          gender = val;
                                        });
                                      }),
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Transform.scale(
                                  scale: .7,
                                  child: Radio(
                                      value: "Female",
                                      groupValue: gender,
                                      onChanged: (val) {
                                        setState(() {
                                          gender = val;
                                        });
                                      }),
                                ),
                                const Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Date Of Birth',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: TextButton(onPressed: () async {
                                      DateTime? newDate = await showDatePicker(
                                        context: context,
                                        initialDate: date,
                                        firstDate: DateTime(1960),
                                        lastDate: DateTime(2100),
                                      );
                                      if (newDate == null) return;

                                      setState(() {
                                        date = newDate;
                                      });
                                      },
                                      child: Text(
                                      ' ${date.day} / ${date.month} / ${date.year} ',
                                      style: const TextStyle(
                                        color:
                                        Color(0xffA1B4C4),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,

                                  ),
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                            if (age(date, DateTime.now()) <= 3 && age(date, DateTime.now()) != 0)
                              Row(
                                children: [
                                  Text(
                                  'Your age must be at least 3 years',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                            ),
                                ],
                              ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Status',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: .7,
                                    child: Radio(
                                        value: "Single",
                                        groupValue: status,
                                        onChanged: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        }),
                                  ),
                                  const Text(
                                    "Single",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: .7,
                                    child: Radio(
                                        value: "Married",
                                        groupValue: status,
                                        onChanged: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        }),
                                  ),
                                  const Text(
                                    "Married",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: .7,
                                    child: Radio(
                                        value: "Widowed",
                                        groupValue: status,
                                        onChanged: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        }),
                                  ),
                                  const Text(
                                    "Widowed",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: .7,
                                    child: Radio(
                                        value: "Divorced",
                                        groupValue: status,
                                        onChanged: (val) {
                                          setState(() {
                                            status = val;
                                          });
                                        }),
                                  ),
                                  const Text(
                                    "Divorced",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Blod Type',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                        child: Container(
                                          height:50, width:50 ,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                          child: TextButton(onPressed: () {
                                            setState(() {
                                              A1 = !A1;
                                              A0 = false;
                                              B1 = false;
                                              B0 = false;
                                              AB1 = false;
                                              AB0 = false;
                                              O1 = false;
                                              O0 = false;
                                              blodtype = 'A+';
                                            });
                                          }, child: Text('A+',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: A1 ? Colors.red : Color(0xffA1B4C4), )),),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                        child: Container(
                                          height:50, width:50 ,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                          child: TextButton(onPressed: () {
                                            setState(() {
                                              A0 = !A0;
                                              A1 = false;
                                              B1 = false;
                                              B0 = false;
                                              AB1 = false;
                                              AB0 = false;
                                              O1 = false;
                                              O0 = false;
                                              blodtype = 'A-';
                                            });
                                          }, child: Text('A-',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: A0 ? Colors.red : Color(0xffA1B4C4),)),),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                        child: Container(
                                          height:50, width:50 ,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                          child: TextButton(onPressed: () {
                                            setState(() {
                                              B1 = !B1;
                                              A1 = false;
                                              A0 = false;
                                              B0 = false;
                                              AB1 = false;
                                              AB0 = false;
                                              O1 = false;
                                              O0 = false;
                                              blodtype = 'B+';
                                            });
                                          }, child: Text('B+',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: B1 ? Colors.red : Color(0xffA1B4C4), )),),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                        child: Container(
                                          height:50, width:50 ,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                          child: TextButton(onPressed: (() {
                                            setState(() {
                                              B0 = !B0;
                                              A1 = false;
                                              A0 = false;
                                              B1 = false;
                                              AB1 = false;
                                              AB0 = false;
                                              O1 = false;
                                              O0 = false;
                                              blodtype = 'B-';
                                            });

                                          }), child: Text('B-',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: B0 ? Colors.red : Color(0xffA1B4C4),)),),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                      child: Container(
                                        height:50, width:50 ,
                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                        child: TextButton(onPressed: (() {
                                          setState(() {
                                            AB1 = !AB1;
                                            A1 = false;
                                            A0 = false;
                                            B1 = false;
                                            B0 = false;
                                            AB0 = false;
                                            O1 = false;
                                            O0 = false;
                                            blodtype = 'AB+';
                                          });

                                        }), child: Text('AB+',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: AB1 ? Colors.red : Color(0xffA1B4C4),)),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                      child: Container(
                                        height:50, width:50 ,
                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                        child: TextButton(onPressed: (() {
                                          setState(() {
                                            AB0 = !AB0;
                                            A1 = false;
                                            A0 = false;
                                            B1 = false;
                                            B0 = false;
                                            AB1 = false;
                                            O1 = false;
                                            O0 = false;                                    });
                                          blodtype = 'AB-';
                                        }), child: Text('AB-',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: AB0 ? Colors.red : Color(0xffA1B4C4), )),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                      child: Container(
                                        height:50, width:50 ,
                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                        child: TextButton(onPressed: (() {
                                          setState(() {
                                          O1 = !O1;
                                          A1 = false;
                                          A0 = false;
                                          B1 = false;
                                          B0 = false;
                                          AB1 = false;
                                          AB0 = false;
                                          O0 = false;
                                          blodtype = 'O+';
                                          });
                                        }),
                                          child: Text('O+',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: O1 ? Colors.red : Color(0xffA1B4C4),)),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0,bottom: 8,),
                                      child: Container(
                                        height:50, width:50 ,
                                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)),
                                        child: TextButton(onPressed: (() {
                                          setState(() {
                                          O0 = !O0;
                                          A1 = false;
                                          A0 = false;
                                          B1 = false;
                                          B0 = false;
                                          AB1 = false;
                                          AB0 = false;
                                          O1 = false;
                                          blodtype = 'O-';

                                          });
                                        }), child: Text('O-',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: O0 ? Colors.red : Color(0xffA1B4C4), )),),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: ()
                                  {
                                    setState(() {
                                      showContainer = !showContainer; // set the boolean to true when button is pressed
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                          'Things about you',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Color(0xffA1B4C4),
                                          ),

                                        ),

                                    ),


                                  ),
                                ),
                              ),

                          ],
                        ),

                            const SizedBox(
                              height: 20,
                            ),

                          ],
                        ),
                      ),

                    ),
                    if (showContainer)
                      Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Expanded(
                            child: Container(margin: EdgeInsets.symmetric(horizontal: 30,vertical: 140),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                              child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: ElevatedButton(style: ButtonStyle(backgroundColor: Thyroid ? MaterialStatePropertyAll( Colors.red ): MaterialStatePropertyAll(Colors.lightGreen )),
                                              onPressed: (()
                                              {
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
                        ],
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
