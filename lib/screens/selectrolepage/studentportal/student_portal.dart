import 'package:club_lok_test/screens/Clubs_and_SCs/ACM/acmpage.dart';
import 'package:club_lok_test/screens/Clubs_and_SCs/CGC/cgcpage.dart';
import 'package:club_lok_test/screens/selectrolepage/clubpage/clubpage.dart';
import 'package:flutter/material.dart';

class StudentPortalPage extends StatefulWidget {
  const StudentPortalPage({super.key});
  @override
  State<StudentPortalPage> createState() => _StudentPortalPage();
}

class _StudentPortalPage extends State<StudentPortalPage> {
  List<String> clubName = ['DITU ACM SC', 'CGC', 'API'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          height: 1300,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 87,
                          width: 536,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'STUDENT PORTAL',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )),
                      // Padding(
                      //   padding: const EdgeInsets.fromLTRB(20, 0, 150, 0),
                      //   child: Container(
                      //     height: 69,
                      //     width: 250,
                      //     color: Colors.white,
                      //     child: const Center(
                      //       child: Text(
                      //         'SEARCH',
                      //         style: TextStyle(
                      //             fontSize: 32,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "TECHNICAL",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ACMSCPAGE()),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                    height: 240,
                                    width: 200,
                                    child: Image.network(
                                        "https://media.licdn.com/dms/image/D4D0BAQHjdLQA3FlORw/company-logo_200_200/0/1664567775181?e=2147483647&v=beta&t=c3kyJ0eZWkWGQWYoPhV7qZTv4RGpyKiuh4PP3-_JU6o")),
                                const Text(
                                  "DITU ACM SC",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CGCPAGE()),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                    height: 240,
                                    width: 200,
                                    child: Image.network(
                                        "data:image/jpeg;base64,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")),
                                const Text(
                                  "CGC",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
