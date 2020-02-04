import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Here'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green,
                  ),
                  child: InkWell(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    onTap: (){
                      print('SigUp tapped');
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
                    },
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // SizedBox(width: 5.0),
                      Text("Already have an account?"),
                      InkWell(
                        child: Text('Log In',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            )),
                        onTap: () {
                          print('LogIn tapped');
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                        },
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}