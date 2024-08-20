import 'package:flutter/material.dart';
import 'package:flutter_firebase/components/adapter_siswa.dart';
import 'package:flutter_firebase/model_data/student.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List<ModelStudent> studentData = [
    ModelStudent(
      name: "Nafi",
      address: "Depok",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Aldi",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Alikha",
      address: "Tuban",
      icon: Icon(FontAwesomeIcons.userNurse),
    ),
    ModelStudent(
      name: "Allam",
      address: "Taerang Selatan",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Jadin",
      address: "Semarang",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Arsya",
      address: "Jepara",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Azzam",
      address: "Sumbawa",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Azzan",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Zain",
      address: "Purbalingga",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Daffa",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Dylan",
      address: "Taerang Selatan",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Dzaky",
      address: "Bekasi",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Hilal",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Jeremy",
      address: "Jember",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Jojo",
      address: "Bali",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Khalisa",
      address: "Rembang",
      icon: Icon(FontAwesomeIcons.userNurse),
    ),
    ModelStudent(
      name: "Narendra",
      address: "Depok",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Farras",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Anam",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Evan",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Fakry",
      address: "Demak",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Kaka",
      address: "Magelang",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Rizzal",
      address: "Koudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Nafisah",
      address: "Sumbawa",
      icon: Icon(FontAwesomeIcons.userNurse),
    ),
    ModelStudent(
      name: "Nail",
      address: "Jakarta",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Afdhal",
      address: "Taerang Selatan",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Nico",
      address: "Jakarta",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Ocean",
      address: "Jogja",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Fajri",
      address: "Jambi",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Radit",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Rifqi",
      address: "Taerang",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Royyan",
      address: "Surabaya",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Ruga",
      address: "Depok",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Satria",
      address: "Pati",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Hilmi",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userAstronaut),
    ),
    ModelStudent(
      name: "Zaskia",
      address: "Kudus",
      icon: Icon(FontAwesomeIcons.userNurse),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: studentData.length,
            itemBuilder: (context, index) {
              return AdapterSiswa(modelStudent: studentData[index]);
            },
          ),
        ),
      ),
    );
  }
}
