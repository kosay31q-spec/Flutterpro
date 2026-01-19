import 'package:flutter/material.dart';
import 'package:schoolv2/screan/grads.dart';
import 'package:schoolv2/screan/homwork.dart';
import 'package:schoolv2/screan/nots.dart';
import 'package:schoolv2/screan/person.dart';

class Hm extends StatefulWidget {
  const Hm({super.key});

  @override
  State<Hm> createState() => _HmState();
}

class _HmState extends State<Hm> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // أبعاد الأزرار
    final buttonWidth = width * 0.4;
    final buttonHeight = height * 0.3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "الصفحة الرئيسية",
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


        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الصف الأول (زرين)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // الزر الأول
                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => gradd(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'العلامات ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => per(),));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'الغيابات',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => wor(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_work, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'الواجبات المنزلية',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // الزر الرابع
                Container(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => not(),));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.note, size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'ملاحظات',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
