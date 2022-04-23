import 'package:flutter/material.dart';
import 'package:madfinal/services/auth.dart';


class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final formKey = GlobalKey<FormState>();
  String email="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Tinder',textAlign: TextAlign.center)),
          backgroundColor: Colors.pinkAccent,
        ),
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text(
                    'Sign in',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    )
                ),
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
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter email';
                    }
                    else{
                      return null;
                    }
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
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter password';
                    }
                    else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: ()async{
                      if(formKey.currentState!.validate()){
                        final snackbar = SnackBar(content: Text('Submitted the form'));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        dynamic result = await _auth
                      .signInWithEmailAndPassword(
                        email, password);
                        if (result == null) {

                        }
                      }
                    },
                    child: Text('Sign in'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/register');
                  },
                  child: Text(
                    'New user Sign up',
                    style: TextStyle(color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

