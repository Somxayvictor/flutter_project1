import 'package:flutter/material.dart';
import 'package:myapp2/login.dart';
import 'package:myapp2/main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: ListView(
        children: [
          Form(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Create account",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 200, left: 200, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue, // set the border color
                          ),
                        ),
                        hintText: "UserName"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 200, left: 200, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue, // set the border color
                          ),
                        ),
                        hintText: "Email"),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(right: 200, left: 200, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue, // set the border color
                          ),
                        ),
                        hintText: "Password"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 200, left: 200, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue, // set the border color
                          ),
                        ),
                        hintText: "confirm password"),
                  ),
                ),
                //  Checkbox(value: value, onChanged: onChanged)
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // set the background color
                    fixedSize:
                        Size(double.infinity, 48), // set the size to longer
                  ),
                  onPressed: () {},
                  child: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have account already: ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: const Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
