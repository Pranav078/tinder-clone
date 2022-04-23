import 'package:flutter/material.dart';
import 'package:madfinal_33/models/user.dart';

import 'screens/home/chats.dart';
import 'screens/home/messages.dart';
import 'screens/login/login.dart';
import 'screens/login/register.dart';
import 'screens/wrapper.dart';
import 'services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //neccesary step to integrate with firebase
  //providing StreamProvider listening to AuthService().userStream here so later wrapper class can get provider.of(context)
  //to see if user is logged in or not
  runApp(StreamProvider<CustomUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().userStream,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wrapper());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tinder', textAlign: TextAlign.center)),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://media.allure.com/photos/5a26c1d8753d0c2eea9df033/3:4/w_1262,h_1683,c_limit/mostbeautiful.jpg',
              width: 380,
              height: 540,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    AuthService().signOut();
                  },
                  child: Icon(Icons.clear, color: Colors.red, size: 40.0),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 8,
                    minimumSize: Size.square(80.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.star, color: Colors.blue, size: 40.0),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 8,
                    minimumSize: Size.square(80.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.favorite, color: Colors.teal, size: 40.0),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 8,
                    minimumSize: Size.square(80.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
