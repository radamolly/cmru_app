import 'package:cmru_app/widget/my_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Phattharada Uansa-ard";
  String accountEmail = "pXUxZ@example.com";

  void changeName() {
    setState(() {
      name = "Somchai Jaidee";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Home', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue.shade800,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/a.jpg'),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "มีคำที่ยาวที่สุดในโลกอยู่หลายคำนะคะ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              "คนที่คิดคำนี้ขึ้นมาเพียงต้องการให้เป็นคำที่ยาวที่สุดเท่านั้น"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 5),
                          Text("41")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call),
                      Text("Call"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.navigation),
                      Text("Route"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share),
                      Text("Share"),
                    ],
                  ),
                ],
              ),
              Text(
                  "มีคำที่ยาวที่สุดในโลกอยู่หลายคำนะคะ แล้วแต่คนจะมองว่าคำที่ยาวที่สุดอย่างเป็นทางการคือ : froccinaucinihilipilification 29 ตัวอักษร เหมือนคนที่คิดคำนี้ขึ้นมาเพียงต้องการให้เป็นคำที่ยาวที่สุดเท่านั้น ความหมาย = ความคิดที่ไร้ประโยชน์ แต่คำที่ยาวที่สุดอีกคำคือ:antidisestablishmentarianism 28 ตัวอักษร ถูกพิจารณาว่าเป็นคำที่ยาวที่สุดเพราะมีความหมายที่แท้จริงและไม่ได้สร้างเพื่อให้เป็นคำยาวที่สุด[แต่ดันยาวที่สุด] หมายถึง ผู้ต่อต้านการรื้อถอนโบสถ์ Church of England")
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeName,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue.shade800,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.blue.shade800,
          onTap: (int index) {},
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_delete),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ));
  }
}
