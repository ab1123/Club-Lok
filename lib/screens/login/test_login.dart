import 'package:club_lok_test/screens/create_account_page/create_account_page.dart';
import 'package:club_lok_test/screens/create_account_page/forgot_pass_page.dart';
import 'package:club_lok_test/screens/selectrolepage/select_role_page.dart';
import 'package:club_lok_test/screens/selectrolepage/studentportal/student_portal.dart';
import 'package:flutter/material.dart';

class TestLogin extends StatefulWidget {
  const TestLogin({super.key});
  @override
  State<TestLogin> createState() => _TestLoginState();
}

class _TestLoginState extends State<TestLogin> {
  bool? rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "CLUB-LOK",
              style: TextStyle(
                  fontSize: 50,
                  color: Color.fromRGBO(255, 0, 0, 1),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            "Password",
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
                ),
//
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150, 0, 100, 0),
              child: SizedBox(
                height: 70,
                width: 600,
// color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassPage()),
                        );
                      },
                      child: const Text(
                        "Forgot password? click here.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(225, 0, 0, 1)),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()),
                        );
                      },
                      child: const Text(
                        "New user? Click here.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(225, 0, 0, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                  child: SizedBox(
                    height: 200,
                    width: 500,
// color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Contact:",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Clublok@gmail.com",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          "8630531665",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          "DIT UNIVERSITY, Mussoorie Road. ",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
