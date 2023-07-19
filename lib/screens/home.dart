import 'package:flutter/material.dart';
import 'package:hubtel/tabs/history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;

  final List<Widget> screens = [
    Container(),
    Container(),
    const HistoryTab(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          onTabTapped(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Color(0xFFCCF3EF), shape: BoxShape.circle),
              child: Image.asset(
                'assets/home.png',
                height: 28,
                width: 28,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/send.png',
              height: 40,
              width: 40,
            ),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/history.png',
              height: 40,
              width: 40,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/scheduled.png',
              height: 40,
              width: 40,
            ),
            label: 'Scheduled',
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color(0xFF01C7B1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFF01C7B1),
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  const Text(
                    'SEND NEW',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
