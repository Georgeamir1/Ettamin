
import 'package:flutter/material.dart';

// List<Widget> containers = [];
String? blodtype;
DateTime date = DateTime.now();
String? gender;
String? status;
bool showContainer = false;
bool Thyroid = false;
bool Gastrointestinal = false;
bool Asthma = false;
bool Diabetes = false;
bool Hypertension = false;
bool Cardiology = false;
var email=TextEditingController();
var FullName=TextEditingController();
var password=TextEditingController();
var confirmPassword=TextEditingController();
var nationalId=TextEditingController();
var phoneNumber=TextEditingController();
var emergencyNumber=TextEditingController();
var namecont= TextEditingController();
var des= TextEditingController();
var Report= TextEditingController();
var id= TextEditingController();
bool A1 = false;
bool A0 = false;
bool B1 = false;
bool B0 = false;
bool AB1 = false;
bool AB0 = false;
bool O1 = false;
bool O0 = false;

var patientcontainers =patient.length ;
var faimilycontainers = faimily.length;
var medicalHcontainers = faimily.length;
var treatmentscontainers = faimily.length;
var treatmentscountercontainers = faimily.length;
var labscontainers = faimily.length;
bool doctor = false;

List patient =[
];
List treatments =[
];
List treatmentscounter =[
];
List labs =[
];
List medicalH =[
];
List faimily =[
];