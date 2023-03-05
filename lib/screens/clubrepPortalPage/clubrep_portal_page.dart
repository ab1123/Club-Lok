import 'package:flutter/material.dart';

class ClubrepPortalPage extends StatefulWidget {
  const ClubrepPortalPage({super.key});

  @override
  State<ClubrepPortalPage> createState() => _ClubrepPortalPage();
}

class _ClubrepPortalPage extends State<ClubrepPortalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(23, 25, 78, 1),
        child: Column(
          children: const [
            Center(child: Text('Clubrep Portal Page')),
          ],
        ),
      ),
    );
  }
}
