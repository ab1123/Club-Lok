import 'package:club_lok_test/screens/selectrolepage/clubpage/clubpage.dart';
import 'package:flutter/material.dart';

class EditAboutClubPage extends StatefulWidget {
  const EditAboutClubPage({super.key});
  @override
  State<EditAboutClubPage> createState() => _EditAboutClubPage();
}

class _EditAboutClubPage extends State<EditAboutClubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          height: 1500,
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
                              'Edit About',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(150, 200, 0, 0),
                      child: Container(
                        height: 500,
                        width: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Edit About",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          width: 270,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.white,
                          child: const Text("Name and Position"),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          width: 270,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.white,
                          child: const Text("Name and Position"),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
