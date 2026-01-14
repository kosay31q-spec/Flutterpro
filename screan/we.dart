import 'package:flutter/material.dart';

class wee extends StatefulWidget {
  const wee({super.key});

  @override
  State<wee> createState() => _weeState();
}

class _weeState extends State<wee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
      backgroundColor: Colors.blue,
      leading:IconButton(onPressed: () {Navigator.pop(context);

      }, icon: Icon(Icons.arrow_back_ios_new)),
      title: const Text(
        "من نحن ",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,

      leadingWidth: 50, // هنا يجب أن تكون داخل AppBar، خارج actions
      automaticallyImplyLeading: false, // وهنا أيضاً
    ),);
  }
}
