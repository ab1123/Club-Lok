import 'package:club_lok_test/screens/clubrepPortalPage/clubrepportal.dart';
import 'package:club_lok_test/screens/create_account_page/create_account_page.dart';
import 'package:club_lok_test/screens/create_account_page/forgot_pass_page.dart';
import 'package:club_lok_test/screens/selectrolepage/select_role_page.dart';
import 'package:club_lok_test/screens/selectrolepage/studentportal/student_portal.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class clubrepTestLogin extends StatefulWidget {
  const clubrepTestLogin({super.key});
  @override
  State<clubrepTestLogin> createState() => _TestLoginState();
}

class _TestLoginState extends State<clubrepTestLogin> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

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
              "CLUB-LOK admins",
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
                          TextField(
                            controller: emailCont,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: passCont,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: const InputDecoration(
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
                                    String email = emailCont.text;
                                    String pass = passCont.text;
                                    if(!EmailValidator.validate(email)) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Invalid Email'), behavior: SnackBarBehavior.floating));
                                      return;
                                    }
                                    if(email == 'admin@DIT.com' && pass == 'admin') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ClubRepPortal()),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Invalid Credentials'), behavior: SnackBarBehavior.floating));
                                    }

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
