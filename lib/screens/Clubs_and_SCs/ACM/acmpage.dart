import 'package:club_lok_test/screens/Clubs_and_SCs/ACM/acmupcomingeventpage.dart';
import 'package:club_lok_test/screens/selectrolepage/clubpage/upcomingevents.dart';
import 'package:flutter/material.dart';

class ACMSCPAGE extends StatefulWidget {
  const ACMSCPAGE({super.key});
  @override
  State<ACMSCPAGE> createState() => _ClubPage();
}

class _ClubPage extends State<ACMSCPAGE> {
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
                            color: Colors.white,
                            child: Image.network(
                                "data:image/png;base64,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"),
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
                            "DITU ACM SC",
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ACMUpcomingEventPage()),
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
                              '''DIT University ACM STUDENT CHAPTER was established on 24th September 2018. Our motto is "Advancing Computing as a Science & Profession" and as our motto stands, The largest computing society, whose goal is to unite computing educators, researchers and professionals to inspire dialogue, share resources and address the field's challenges.
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
                            "https://media.licdn.com/dms/image/D4D0BAQHjdLQA3FlORw/company-logo_200_200/0/1664567775181?e=2147483647&v=beta&t=c3kyJ0eZWkWGQWYoPhV7qZTv4RGpyKiuh4PP3-_JU6o"),
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
