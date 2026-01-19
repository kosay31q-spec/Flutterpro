import 'package:flutter/material.dart';
import 'package:schoolv2/screan/callme.dart';
import 'package:schoolv2/screan/we.dart';
import 'package:schoolv2/screan/weekend.dart';
import 'screan/login.dart';

void main(){
  runApp(run_app());

}
class run_app extends StatefulWidget {
  const run_app({super.key});

  @override
  State<run_app> createState() => _run_appState();
}

class _run_appState extends State<run_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home: log_in(),
      routes: {
        '/we': (context) => wee(),
        '/week':(context) => week(),
        '/call':(context) => call(),
        '/log_in':(context) => log_in()

      },);
  }
}
