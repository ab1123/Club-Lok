import 'package:flutter/material.dart';

class UpcomingEventPage extends StatefulWidget {
  const UpcomingEventPage({super.key});
  @override
  State<UpcomingEventPage> createState() => _UpcomingEventPage();
}

class _UpcomingEventPage extends State<UpcomingEventPage> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            child: Column(
                              children: const [
                                Text(
                                  "Event 1",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "About the event",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "Co-ordinator Name",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "Registration Link",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                      child: Container(
                        height: 360,
                        width: 260,
                        color: Colors.grey,
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
