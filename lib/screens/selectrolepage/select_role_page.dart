import 'package:club_lok_test/screens/clubrepPortalPage/clubrepportal.dart';
import 'package:club_lok_test/screens/login/test_login.dart';
import 'package:club_lok_test/screens/selectrolepage/studentportal/student_portal.dart';
import 'package:flutter/material.dart';

class SelectRolePage extends StatefulWidget {
  const SelectRolePage({super.key});
  @override
  State<SelectRolePage> createState() => _HomeState();
}

class _HomeState extends State<SelectRolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 172, 0, 0),
                child: Text(
                  "CLUB - LOK",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(225, 0, 0, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  "Who's Logging in?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
// ),
                Column(
                  children: [
                    InkWell(
                        child: Container(
                          height: 70,
                          width: 435,
                          color: const Color.fromARGB(255, 110, 0, 0),
                          child: const Center(
                            child: Text(
                              "CLUB REPRESENTIVE",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ClubRepPortal()),
                          );
                        }),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        child: Container(
                          height: 70,
                          width: 435,
                          color: const Color.fromARGB(255, 110, 0, 0),
                          child: const Center(
                            child: Text(
                              "STUDENT",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TestLogin()),
                          );
                        }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
