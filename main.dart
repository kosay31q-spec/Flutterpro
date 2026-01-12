import 'package:flutter/material.dart';
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
    return MaterialApp(home: log_in(),);
  }
}
