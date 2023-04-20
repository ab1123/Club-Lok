import 'package:club_lok_test/screens/Clubs_and_SCs/ACM/acmpage.dart';
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
                                    builder: (context) => const ACMSCPAGE()),
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
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ClubPage()),
                              );
                            },
                            child: Column(
                              children: [
                                Container(
                                    height: 240,
                                    width: 200,
                                    child: Image.network(
                                        "data:image/jpeg;base64,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L/5FaeL8r/r97lP0ULsrZropHSSjMZD39l21VSHtDWcdV9IiKwqPREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREX//Z")),
                                const Text(
                                  "API",
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
                      ],
                    )
                  ],
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
                          "CULTURAL",
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
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                    height: 240,
                                    width: 200,
                                    child: Image.network(
                                        "data:image/jpeg;base64,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")),
                                const Text(
                                  "MESMERONICA",
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
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
