import 'package:flutter/material.dart';

class week extends StatefulWidget {
  const week({super.key});

  @override
  State<week> createState() => _weekState();
}

class _weekState extends State<week> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      leading:IconButton(onPressed: () {Navigator.pop(context);

      }, icon: Icon(Icons.arrow_back_ios_new)),
      title: const Text(
        "برنامج الاسبوع ",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,

      leadingWidth: 50, // هنا يجب أن تكون داخل AppBar، خارج actions
      automaticallyImplyLeading: false, // وهنا أيضاً
    ),);
  }
}
