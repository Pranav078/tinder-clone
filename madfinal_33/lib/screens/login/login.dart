import 'package:flutter/material.dart';
import 'package:madfinal_33/screens/login/register.dart';
import 'package:madfinal_33/services/auth.dart';
import 'package:madfinal_33/services/auth.dart';

import '../../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Tinder', textAlign: TextAlign.center)),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text('Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.pink,
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (val) =>
                      val!.isEmpty ? 'Enter an email address' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.pink,
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  validator: (val) =>
                      val!.length < 6 ? 'Password must be of 6 char' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        final snackbar =
                            SnackBar(content: Text('Submitted the form'));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            email, password);
                        if (result == null) {}
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      }

                    },
                    child: Text('Sign in'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                  },
                  child: Text(
                    'New user Sign up',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
