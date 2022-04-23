import 'package:flutter/material.dart';
import 'package:madfinal_33/main.dart';
import 'package:madfinal_33/models/user.dart';
import 'package:madfinal_33/screens/login/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    //actively listening to stream of return type CustomUser?
    final user = Provider.of<CustomUser?>(context);

    print(user);
    print('wrapper class is executing');

    return user == null ? Login() : Home();
  }
}
