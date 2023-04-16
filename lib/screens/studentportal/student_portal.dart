import 'package:club_lok_test/screens/selectrolepage/clubpage/clubpage.dart';
import 'package:flutter/material.dart';

class StudentPortalPage extends StatefulWidget {
  const StudentPortalPage({super.key});
  @override
  State<StudentPortalPage> createState() => _StudentPortalPage();
}

class _StudentPortalPage extends State<StudentPortalPage> {
  List<String> clubName = ['CGC', 'ACM', 'API'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.black,
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 150, 0),
                          child: Container(
                            height: 69,
                            width: 250,
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                'SEARCH',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
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
                          for (int i = 0; i < 3; i++)
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
                                      color: Colors.red,
                                    ),
                                    Text(
                                      clubName[i],
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          for (int i = 1; i < 4; i++)
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
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      "CLUB $i",
                                      style: const TextStyle(
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
                          for (int i = 1; i < 8; i++)
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Container(
                                      height: 240,
                                      width: 200,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      "CLUB $i",
                                      style: const TextStyle(
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
        ],
      ),
    );
  }
}
