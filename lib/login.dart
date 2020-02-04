import 'package:flutter/material.dart';
import 'package:world_hello/sign_up.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  
  @override
  void dispose(){

    username_controller.dispose();
    password_controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0,bottom: 16.0),
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
                  controller: username_controller,
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
                  controller: password_controller,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  
                  height: 50.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.deepOrange,
                  ),
                  child: InkWell(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    onTap: (){
                      print(username_controller.toString());
                      print(password_controller.toString());
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
                    }
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // SizedBox(width: 5.0),
                      Text("Don't have an account?"),
                      InkWell(
                        child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            )),
                        onTap: () {
                          print('SignUp tapped');
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
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
