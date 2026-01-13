import 'package:flutter/material.dart';


class gradd extends StatefulWidget {
  const gradd({super.key});

  @override
  State<gradd> createState() => _graddState();
}

class _graddState extends State<gradd> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "الفصول الدراسية",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {},
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
                value: '/logout',
                child: Text('تسجيل خروج'),
              ),
            ],
          ),
        ],leadingWidth: width,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // الفصل الأول
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("1", style: TextStyle(color: Colors.white)),
                ),
                title: Text("الفصل الأول"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {

                },
              ),
            ),

            SizedBox(height: 10), // مسافة بين الفصلين

            // الفصل الثاني
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text("2", style: TextStyle(color: Colors.white)),
                ),
                title: Text("الفصل الثاني"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


