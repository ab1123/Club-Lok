import 'package:club_lok_test/screens/create_account_page/create_account_page.dart';
import 'package:club_lok_test/screens/selectrolepage/studentportal/student_portal.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _TestLoginState();
}

class _TestLoginState extends State<ForgotPassPage> {
  bool? rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: Colors.black,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "CLUB-लोक",
                style: TextStyle(
                    fontSize: 48,
                    color: Color.fromARGB(255, 225, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: SizedBox(
                      height: 300,
                      width: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Enter SAP ID",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const Spacer(),
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "OLD PASSWORD",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const Spacer(),
                          const TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "NEW PASSWORD",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const Spacer(),
                          const TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const StudentPortalPage()),
                                    );
                                  },
                                  child: const SizedBox(
                                    height: 28,
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
