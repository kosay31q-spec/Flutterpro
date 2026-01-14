import 'package:flutter/material.dart';

class gra_two extends StatefulWidget {
  const gra_two({super.key});

  @override
  State<gra_two> createState() => _gra_twoState();
}

class _gra_twoState extends State<gra_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new)),
      title: const Text(
        "الفصل الثاني  ",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton<String>(
          onSelected: (String value) {
            Navigator.pushNamed(context, value);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: '/we',
              child: Text('من نحن'),
            ),
            const PopupMenuItem<String>(
              value: '/call',
              child: Text('اتصل بنا'),
            ),
            const PopupMenuItem<String>(
              value: '/week',
              child: Text('برنامج الأسبوع'),
            ),
            const PopupMenuItem<String>(
              value: '/log_in',
              child: Text('تسجيل خروج'),
            ),
          ],
        ),
      ],
      leadingWidth: 50, // هنا يجب أن تكون داخل AppBar، خارج actions
      automaticallyImplyLeading: false, // وهنا أيضاً
    ));
  }
}
