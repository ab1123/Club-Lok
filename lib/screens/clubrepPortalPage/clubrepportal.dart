import 'package:club_lok_test/screens/clubrepPortalPage/edit_about_and_team_page/edit_about_club_page.dart';
import 'package:club_lok_test/screens/clubrepPortalPage/upload_upcoming_event_page/upload_upcoming_event_page.dart';
import 'package:club_lok_test/screens/selectrolepage/clubpage/upcomingevents.dart';
import 'package:flutter/material.dart';

class ClubRepPortal extends StatefulWidget {
  const ClubRepPortal({super.key});
  @override
  State<ClubRepPortal> createState() => _ClubRepPortal();
}

class _ClubRepPortal extends State<ClubRepPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                            color: const Color.fromARGB(255, 110, 0, 0),
                            child: const Center(
                              child: Text(
                                "UPLOAD BANNER OF THE CLUB",
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EditAboutClubPage()),
                          );
                        },
                        child: const Text(
                          "EDIT ABOUT & MANAGEMENT",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 500,
                          width: 1000,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 170, 0, 0),
                                  child: InkWell(
                                    child: Text(
                                      "Edit prior event",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const UploadEventPage()),
                                    );
                                  },
                                  child: const Text(
                                    "Upload new event",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 240, 0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                        child: const Center(
                          child: Text(
                            "EDIT LOGO",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
