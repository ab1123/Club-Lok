import 'package:club_lok_test/screens/selectrolepage/clubpage/clubpage.dart';
import 'package:flutter/material.dart';

class UploadEventPage extends StatefulWidget {
  const UploadEventPage({super.key});
  @override
  State<UploadEventPage> createState() => _UpcomingEventPageState();
}

class _UpcomingEventPageState extends State<UploadEventPage> {
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
                              'Upload Event',
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
                              "Name of the event",
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
                            Spacer(),
                            Text(
                              "About the event",
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
                            Spacer(),
                            Text(
                              "Registeration link",
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
                            Spacer(),
                            Text(
                              "For more info contact",
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
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 400,
                    width: 270,
                    color: Colors.grey,
                    child: const Center(
                      child: Text(
                        "Upload Poster",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
