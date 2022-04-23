import 'package:flutter/material.dart';
import 'package:madfinal/pages/chat_screen.dart';
import 'package:madfinal/pages/login.dart';
import 'package:madfinal/pages/messages.dart';
import 'package:madfinal/pages/register.dart';
import 'package:madfinal/pages/chats.dart';
void main() {
  runApp(MaterialApp(
      initialRoute: '/register',
      routes: {
        '/': (context)=>Home(),
        '/login': (context)=>Login(),
        '/register': (context)=>Register(),
        '/messages': (context)=>Messages(),
        '/chat':(context)=>Chat(),
      }
  ));
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
        title: Center(child: Text('Tinder',textAlign: TextAlign.center)),
        backgroundColor: Colors.pinkAccent,
      ),
      body:Column(
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
                  onPressed: (){

                  },
                  child: Icon(Icons.clear,color:Colors.red,size: 40.0),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 8,
                    minimumSize: Size.square(80.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Icon(Icons.star,color:Colors.blue,size: 40.0),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 8,
                    minimumSize: Size.square(80.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Icon(Icons.favorite,color:Colors.teal,size: 40.0),
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
