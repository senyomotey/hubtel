import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hubtel Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List<Widget> _screens = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(17.0),
        child: Column(children: [
          const SizedBox(height: 50.0),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6EAED),
                      borderRadius: BorderRadius.circular(6), // Border radius value
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Container(
                            padding: const EdgeInsets.all(13),
                            child: Image.asset(
                              'assets/search.png',
                              height: 18,
                              width: 18,
                            ),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Color(0xFF9CABB8), fontSize: 21.0)),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                GestureDetector(
                  child: Image.asset(
                    'assets/filter.png',
                    height: 44,
                    width: 44,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6EAED),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        'May 24, 2022',
                        style: TextStyle(color: Color(0xFF9CABB8), fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                Card(
                  elevation: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(17.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFE6EAED),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '14:45PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Color(0xFF9CABB8), fontSize: 18.0),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/mtn.png',
                              height: 45,
                              width: 45,
                            ),
                            const SizedBox(width: 12.0),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'Emmanuel Rockson Kwabena Uncle Ebo',
                                          style: TextStyle(color: Color(0xFF9CABB8), fontSize: 19.0),
                                        ),
                                      ),
                                      const SizedBox(width: 12.0),
                                      Container(
                                        padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/successful.png',
                                              height: 17,
                                              width: 17,
                                            ),
                                            const SizedBox(width: 12.0),
                                            const Text(
                                              'Successful',
                                              style: TextStyle(color: Color(0xFF70E083), fontSize: 15.0),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFDBF7E0),
                                          borderRadius: BorderRadius.circular(19),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12.0),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '024 123 4567',
                                          style: TextStyle(color: Color(0xFF9EADBA), fontSize: 19.0),
                                        ),
                                      ),
                                      Text(
                                        'GHS 500',
                                        style: TextStyle(
                                            color: Color(0xFF000000), fontSize: 19.0, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          height: 1.0,
                          color: const Color(0xFFE6EAED),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/user.png',
                              height: 35,
                              width: 35,
                            ),
                            const SizedBox(width: 12.0),
                            const Text(
                              'Personal',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Container(
                              height: 5.0,
                              width: 5.0,
                              decoration: BoxDecoration(color: Color(0xFF9CABB8), shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 12.0),
                            const Expanded(
                              child: Text(
                                'Cool your heart wai',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/favorite.png',
                              height: 28,
                              width: 28,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                Card(
                  elevation: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(17.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFE6EAED),
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '14:45PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Color(0xFF9CABB8), fontSize: 18.0),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/mtn.png',
                              height: 45,
                              width: 45,
                            ),
                            const SizedBox(width: 12.0),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'Emmanuel Rockson Kwabena Uncle Ebo',
                                          style: TextStyle(color: Color(0xFF9CABB8), fontSize: 19.0),
                                        ),
                                      ),
                                      const SizedBox(width: 12.0),
                                      Container(
                                        padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/successful.png',
                                              height: 17,
                                              width: 17,
                                            ),
                                            const SizedBox(width: 12.0),
                                            const Text(
                                              'Successful',
                                              style: TextStyle(color: Color(0xFF70E083), fontSize: 15.0),
                                            ),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFDBF7E0),
                                          borderRadius: BorderRadius.circular(19),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12.0),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '024 123 4567',
                                          style: TextStyle(color: Color(0xFF9EADBA), fontSize: 19.0),
                                        ),
                                      ),
                                      Text(
                                        'GHS 500',
                                        style: TextStyle(
                                            color: Color(0xFF000000), fontSize: 19.0, fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          height: 1.0,
                          color: const Color(0xFFE6EAED),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/user.png',
                              height: 35,
                              width: 35,
                            ),
                            const SizedBox(width: 12.0),
                            const Text(
                              'Personal',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Container(
                              height: 5.0,
                              width: 5.0,
                              decoration: BoxDecoration(color: Color(0xFF9CABB8), shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 12.0),
                            const Expanded(
                              child: Text(
                                'Cool your heart wai',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/favorite.png',
                              height: 28,
                              width: 28,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/home.png',
                height: 28,
                width: 28,
              ),
              decoration: BoxDecoration(color: Color(0xFFCCF3EF), shape: BoxShape.circle),
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
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF01C7B1),
                      size: 30,
                    ),
                    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 12.0),
                  const Text(
                    'SEND NEW',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF01C7B1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
