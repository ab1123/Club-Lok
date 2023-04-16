import 'package:club_lok_test/screens/ClubrepPortalPage/clubrep_portal_page.dart';
import 'package:club_lok_test/screens/login/test_login.dart';
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
        color: const Color.fromRGBO(23, 25, 78, 1),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 172, 0, 0),
                child: Text(
                  "CLUB - LOK",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Column(
                //   children: [
                //     // Container(
                //     //   height: 235,
                //     //   width: 204,
                //     //   color: Colors.red,
                //     // ),
                //     // const SizedBox(
                //     //   height: 10,
                //     // ),
                //     // const Text(
                //     //   "ADMIN",
                //     //   style: TextStyle(
                //     //       fontSize: 24,
                //     //       fontWeight: FontWeight.bold,
                //     //       color: Colors.white),
                //     // ),
                //   ],
                // ),
                // const SizedBox(
                //   width: 238,
                // ),
                Column(
                  children: [
                    InkWell(
                        child: Container(
                          height: 235,
                          width: 204,
                          color: Colors.red,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ClubrepPortalPage()),
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "CLUB REP.",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                        child: Container(
                          height: 235,
                          width: 204,
                          color: Colors.red,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TestLogin()),
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "STUDENT",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
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
