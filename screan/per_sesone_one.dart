import 'package:flutter/material.dart';
class per_one extends StatefulWidget {
  const per_one({super.key});

  @override
  State<per_one> createState() => _per_oneState();
}

class _per_oneState extends State<per_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      leading:IconButton(onPressed: () {Navigator.pop(context);

      }, icon: Icon(Icons.arrow_back_ios_new)),
      title: const Text(
        "الفصل الاول  ",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton<String>(
          onSelected: (String value) { Navigator.pushNamed(context, value);},
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
    ),);;
  }
}
