import 'package:flutter/material.dart';
import 'package:myapp2/signUp.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Login",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Login to your account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, left: 200, top: 20),
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
                padding: const EdgeInsets.only(right: 200, left: 200, top: 20),
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
                padding: const EdgeInsets.only(right: 200, left: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCheckbox(),
                    TextButton(onPressed: () {}, child: Text("Forget password"))
                  ],
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
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("No account: ?"),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    }, child: Text("Signin"))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );;
  }
}
class MyCheckbox extends StatefulWidget {
  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}