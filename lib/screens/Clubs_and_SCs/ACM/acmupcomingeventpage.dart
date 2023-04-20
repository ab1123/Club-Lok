import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ACMUpcomingEventPage extends StatefulWidget {
  const ACMUpcomingEventPage({super.key});
  @override
  State<ACMUpcomingEventPage> createState() => _UpcomingEventPage();
}

_launchURL() async {
  const url = 'https://forms.gle/Sn4CGw6dJTNxQWKd8';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

class _UpcomingEventPage extends State<ACMUpcomingEventPage> {
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
                            height: 750,
                            width: 600,
                            child: Column(
                              children: const [
                                Text(
                                  "WEB DEVLEPMENT WORKSHOP",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  '''We are glad to announce that DITU ACM SC is organizing a 3-day workshop on Web development. 🤩

The 3-day workshop will include an introduction to the concepts of Web Development. We will cover the Front-End concepts of Web Development starting from introduction about HTML, CSS and Java-Script from scratch to intermediate level having the hands-on experience through coding.

Why should you attend the workshop?🤔

Answer: - After attending the workshop, the participants will be able to build their own basic website on their Local Host machine. The real time experience provided in the workshop will help the participants to use their skills, knowledge and practice to develop websites for internet and also effectively manage the website projects using available resources .✨
 
🗓️- 5th, 6th and 7th April 2023
⏲️-3pm to 5pm
Venue- Workshop building seminar hall
''',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "Co-ordinator Name - Shashank Rawat",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: _launchURL,
                                  child: Text(
                                    "Registration Link",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Spacer(),
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
