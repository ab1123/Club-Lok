import 'package:club_lok_test/screens/Clubs_and_SCs/ACM/acmupcomingeventpage.dart';
import 'package:club_lok_test/screens/Clubs_and_SCs/CGC/cgcupcomingevents.dart';
import 'package:club_lok_test/screens/selectrolepage/clubpage/upcomingevents.dart';
import 'package:flutter/material.dart';

class CGCPAGE extends StatefulWidget {
  const CGCPAGE({super.key});
  @override
  State<CGCPAGE> createState() => _ClubPage();
}

class _ClubPage extends State<CGCPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(0, 0, 0, 1),
            child: SingleChildScrollView(child:  Column(
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
                            color: Colors.white,
                            child: Image.network(
                                "data:image/jpeg;base64,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"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 500,
                      child: Container(
                        color: Color.fromRGBO(110, 0, 0, 1),
                        child: const Center(
                          child: Text(
                            "CGC",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // Container(
                    //   child: const Text(
                    //     "MANAGEMENT",
                    //     style: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.white),
                    //   ),
                    // ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CGCUpcomingEventPage()),
                        );
                      },
                      child: const Text(
                        "UPCOMING EVENTS",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                          child: const Center(
                            child: Text(
                              '''CGC club aims at aligning the students of DIT University to learn the crucial aspects of coding. Teach the art of coming and also spread the awareness of cyber security , this is the only club which teaches all the aspects of todays need.
                              ''',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                        child: Image.network(
                            "data:image/jpeg;base64,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"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
            ),
        ],
      ),
    );
  }
}
