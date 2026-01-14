import 'package:flutter/material.dart';

class not extends StatefulWidget {
  const not({super.key});

  @override
  State<not> createState() => _notState();
}

class _notState extends State<not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.blue,
      leading:IconButton(onPressed: () {Navigator.pop(context);

      }, icon: Icon(Icons.arrow_back_ios_new)),
      title: const Text(
        "ملاحظات  ",
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
    ),);
  }
}
