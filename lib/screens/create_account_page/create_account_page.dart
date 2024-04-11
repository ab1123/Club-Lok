import 'package:club_lok_test/screens/create_account_page/create_account_page.dart';
import 'package:club_lok_test/screens/selectrolepage/studentportal/student_portal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
 const CreateAccount({super.key});

 @override
 State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final TextEditingController confirmPasswordController = TextEditingController();
 bool? rememberMe = false;
 bool _obscureText = true; // State to toggle password visibility

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          color: Colors.black,
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                "CLUB-लोक",
                style: TextStyle(
                    fontSize: 48,
                    color: Color.fromARGB(255, 225, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: SizedBox(
                      height: 500,
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
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
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
                          TextField(
                            controller: passwordController,
                            obscureText: _obscureText,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: Icon(
                                 _obscureText ? Icons.visibility : Icons.visibility_off,
                                ),
                                onPressed: () {
                                 setState(() {
                                    _obscureText = !_obscureText;
                                 });
                                },
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "CONFIRM PASSWORD",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          const Spacer(),
                          TextField(
                            controller: confirmPasswordController,
                            obscureText: _obscureText,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: Icon(
                                 _obscureText ? Icons.visibility : Icons.visibility_off,
                                ),
                                onPressed: () {
                                 setState(() {
                                    _obscureText = !_obscureText;
                                 });
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                 checkColor: Colors.black,
                                 fillColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.disabled)) {
                                      return Colors.white.withOpacity(.32);
                                    }
                                    return Colors.white;
                                 }),
                                 value: rememberMe,
                                 onChanged: (bool? value) {
                                    setState(() {
                                      rememberMe = value;
                                    });
                                 }),
                              const Text(
                                "Remember Me",
                                style: TextStyle(fontSize: 14, color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey),
                                 onPressed: () async {
                                    if (passwordController.text !=
                                        confirmPasswordController.text) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content:
                                              Text('Passwords do not match'),
                                          behavior: SnackBarBehavior.floating,
                                        ),
                                      );
                                      return;
                                    }
                                    try {
                                      UserCredential userCredential =
                                          await FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      );
                                      print("Done Boss");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StudentPortalPage()),
                                      );
                                    } 
                                    on FirebaseAuthException catch (e) {
                                      if (e.code == 'weak-password') {
                                        print(
                                            'The password provided is too weak.');
                                      } else if (e.code ==
                                          'email-already-in-use') {
                                        print(
                                            'The account already exists for that email.');
                                      }
                                    } 
                                    catch (e) {
                                      print(e);
                                    }
                                 },
                                 child: const SizedBox(
                                    height: 28,
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Register",
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
