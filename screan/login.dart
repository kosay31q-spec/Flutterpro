import 'package:flutter/material.dart';
import 'package:schoolv2/screan/home.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: width,
        backgroundColor: Colors.blue,
        title: Center(
          child: Text("تسجيل الدخول ", style: TextStyle(color: Colors.white)),
        ),
        actions: [
          Row(
            children: [
              PopupMenuButton<String>(
                onSelected: (String value) { Navigator.pushNamed(context, value);},
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
      ),

      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Image.asset('assets/photo.png'),
            SizedBox(
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  label: Text('email'),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: height * 0.02),
            SizedBox(
              width: width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  label: Text('password'),
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),

                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: height*0.02,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Hm(),));
              },
              child: Text('تسجيل الدخول '),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 75), // مربع 100×100
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: Colors.blue[300]
              ),
            )
          ],
        ),
      ),
    );
  }
}
