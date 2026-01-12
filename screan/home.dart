import 'package:flutter/material.dart';

class hm extends StatefulWidget {
  const hm({super.key});

  @override
  State<hm> createState() => _hmState();
}

class _hmState extends State<hm> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      leadingWidth: width,
      backgroundColor: Colors.blue,
      title: Center(
        child: Text("الصفحة الرئيسية ", style: TextStyle(color: Colors.white)),
      ),
      actions: [
        Row(
          children: [
            PopupMenuButton<String>(
              onSelected: (String value) {},
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: '/we',
                  child: ListTile(trailing: Text('من نحن')),
                ),
              ],
            ),
          ],
        ),
      ],
        automaticallyImplyLeading: false
    ),);
  }
}
