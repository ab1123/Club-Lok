import 'package:club_lok_test/screens/selectrolepage/select_role_page.dart';
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
                                  if (states.contains(MaterialState.disabled)) {
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
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
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
                                            const SelectRolePage()),
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
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                  child: SizedBox(
                    height: 70,
                    width: 600,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "If you don’t remember your password  click here .",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "For Creating an Account   click here .",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          style: TextStyle(fontSize: 36, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "Clublok@gmail.com",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "8630531665",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          "DIT UNIVERSITY, Mussoorie Road.  ",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(150, 0, 100, 0),
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "SOCIAL",
                          style: TextStyle(fontSize: 36, color: Colors.white),
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
