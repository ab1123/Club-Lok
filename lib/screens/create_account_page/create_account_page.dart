import 'package:club_lok_test/screens/create_account_page/create_account_page.dart';
import 'package:club_lok_test/screens/studentportal/student_portal.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _TestLoginState();
}

class _TestLoginState extends State<CreateAccount> {
  bool? rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: const Color.fromRGBO(23, 25, 78, 1),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "CLUB-LOK",
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
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
                      height: 220,
                      width: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "USERNAME",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const Text(
                            "E-MAIL",
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
                            "FULL NAME",
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
                            "PASSWORD",
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
                            "CONFIRM PASSWORD",
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
                          Row(
                            children: [
                              Checkbox(
                                  checkColor: Colors.black,
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return Colors.white.withOpacity(.32);
                                    }
                                    return Colors.white;
                                  }),
                                  //only check box
                                  value: rememberMe, //unchecked
                                  onChanged: (bool? value) {
                                    //value returned when checkbox is clicked
                                    setState(() {
                                      rememberMe = value;
                                    });
                                  }),
                              const Text(
                                "Remember Me",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
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
                                        "Login",
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
