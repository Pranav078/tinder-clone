import 'package:flutter/material.dart';

import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({required this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
            text:TextSpan(
              children: [
                TextSpan(text: widget.user.name,style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
                TextSpan(text: '\n'),
                TextSpan(text: 'Online',style:
                  TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
              text: widget.user.name
            ),
            ),
        leading: IconButton(
            icon:Icon(Icons.arrow_back_ios),
            color:Colors.white,
            onPressed:(){
            Navigator.pop(context);
        }),

      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Column(
                    children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,

                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width*0.80
                            ),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Text('databssdxfdfsdfvsdfsdfsdf',style:TextStyle(color: Colors.black54,)),
                          ),
                        ),
                      Row(
                        children: <Widget>[
                          Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ]
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('assets/user1.jpg'),
                          ),
                        ),
                          SizedBox(width: 10,),
                          Text('12:30',style:TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                          ),
                          ),
                        ],
                      ),
                ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,

                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width*0.80
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Text('databssdxfdfsdfvsdfsdfsdf',style:TextStyle(color: Colors.white,)),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ]
                          ),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('assets/user1.jpg'),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('12:30',style:TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),

                Container(child:Text('data'),),
                Container(child:Text('data'),),
              ],
            ),
          ),
          Container(child: Text('Send message'),),
        ],
      ),
    );
  }
}
