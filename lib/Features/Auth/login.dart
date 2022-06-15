import 'package:flutter/material.dart';
import 'sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
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
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Sign In",
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
                        onEditingComplete: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: const EdgeInsets.only(
                                      bottom: 0, top: 30, left: 20, right: 20),
                                  actionsPadding: const EdgeInsets.only(top: 0),
                                  content: const Text(
                                    "Do you want to save your Data ?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff699E96),
                                        fontSize: 16),
                                  ),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Ok"),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Cancel"),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                      // *********************** End ... TextFormField **********************
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color(0xff699E96),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              icon: const Icon(Icons.navigate_next),
                              onPressed: () {
                                if (_formstate.currentState!.validate()) {
                                  Navigator.pushNamed(context, "home");
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      // *************** End MaterialButton ********************
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text(".. Create One",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff699E96),
                                    fontSize: 16)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "--- OR ---",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/fb.png"),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("images/go.png"),
                            radius: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("images/in.jpg"),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
