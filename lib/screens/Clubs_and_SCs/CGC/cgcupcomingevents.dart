import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CGCUpcomingEventPage extends StatefulWidget {
  const CGCUpcomingEventPage({super.key});
  @override
  State<CGCUpcomingEventPage> createState() => _UpcomingEventPage();
}

_launchURL() async {
  const url = 'https://forms.gle/MTK8hErx1AQgt6Wk7';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

class _UpcomingEventPage extends State<CGCUpcomingEventPage> {
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
                                  "MOVES OF THE CHAMPIONS",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  '''Greetings from CGC CLUB DITU,

We the CGC Club of DITU is super excited to host our very first offline gaming  event of the year 2021-22 *Moves of the Champions* the chess competition which is scheduled tomorrow that is 20/11/21.

Please grace the occasion with your presence. Hope to see you guys tomorrow at the venue.

Venue:- Chanakya lawn.
Time:- 2 to 6
Day:- Saturday.

Thank you.
''',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Spacer(),
                                Text(
                                  "Co-ordinator Name - Sanskar Saxena",
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
                        height: 760,
                        width: 560,
                        child: Image.network(
                            "data:image/jpeg;base64,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"),
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
