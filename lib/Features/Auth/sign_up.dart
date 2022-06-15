import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: const Color(0xff699E96).withOpacity(0.1),
          height: 750,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                  key: _formstate,
                  child: Column(
                    children: [
                      // ******************* UserName *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter Name",
                        ),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        keyboardType: TextInputType.name,
                        validator: (text) {
                          if (text!.length < 10) {
                            return "Name can't be less than 10 letters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Email *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Email",
                        ),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        keyboardType: TextInputType.emailAddress,
                        validator: (text) {
                          if (text!.length < 15) {
                            return "Email can't be less than 15 letters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Password *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "Enter Password",
                        ),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        obscureText: true,
                        validator: (text) {
                          if (text!.length < 6) {
                            return "Password can't be less than 6 letters";
                          }
                          return null;
                        },
                      ),
                      // *********************** End ... TextFormField **********************
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(0xff699E96),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              icon: const Icon(Icons.navigate_next),
                              onPressed: () {
                                if (_formstate.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()));
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      // *************** End MaterialButton ********************
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Have an Account ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text("Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff699E96),
                                    fontSize: 16)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
