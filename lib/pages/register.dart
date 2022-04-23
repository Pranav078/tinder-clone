import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Column(
          children: [
            /*Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 160.0),
            child: Image(
              image: AssetImage('assets/logo.jpg'),
              width: 60,
              height: 60,
            ),
          ),*/
            Padding(
              padding: const EdgeInsets.fromLTRB(125, 250, 100, 0),
              child: Text(
                'tinder',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'By clicking Log In,you agree with our Terms.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            Text(
              'Learn how we process your data in our Privacy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            Text('Policy and Cookies policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Login in with Google'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350,35),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Login in with Facebook'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350,35),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Login in with Phone no.'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350,35),
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
              ),
            ),
          ],
        )
    );
  }
}
