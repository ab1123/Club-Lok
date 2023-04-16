import 'package:flutter/material.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});
  @override
  State<ClubPage> createState() => _ClubPage();
}

class _ClubPage extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              color: Color.fromARGB(255, 110, 0, 0),
                              child: const Center(
                                child: Text(
                                  "BANNER OF THE CLUB",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 500,
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              "NAME OF THE CLUB OR SC",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: const Text(
                          "ABOUT",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: const Text(
                          "MANAGEMENT",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "UPCOMING EVENTS",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
// Container(
// height: 200,
// width: 200,
// color: Colors.amber,
// ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 500,
                        width: 1000,
                        color: Colors.grey,
                        child: const Text(
                          "ABOUT THE CLUB OR SC",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
