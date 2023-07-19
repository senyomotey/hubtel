import 'package:flutter/material.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({super.key});

  @override
  HistoryTabState createState() => HistoryTabState();
}

class HistoryTabState extends State<HistoryTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60.0),
        Container(
          height: 50,
          margin: const EdgeInsets.all(17.0),
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: const Color(0xFFE6EAED),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: Colors.white,
              ),
              labelColor: Colors.black,
              unselectedLabelColor: const Color.fromARGB(93, 0, 0, 0),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                    child: Container(
                  margin: EdgeInsets.zero,
                  width: double.infinity,
                  child: const Text(
                    'History',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                )),
                Tab(
                  child: Container(
                    margin: EdgeInsets.zero,
                    width: double.infinity,
                    child: const Text(
                      'Transaction Summary',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 13.0),
        Container(
          height: 1.0,
          color: const Color(0xFFE6EAED),
        ),
        const SizedBox(height: 8.0),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(17.0),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(1.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6EAED),
                        borderRadius: BorderRadius.circular(6), // Border radius value
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(14),
                              child: Image.asset(
                                'assets/search.png',
                                height: 18,
                                width: 18,
                                color: Colors.black54,
                              ),
                            ),
                            hintText: 'Search',
                            hintStyle: const TextStyle(color: Color(0xFF9CABB8), fontSize: 19.0)),
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
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE6EAED),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: const Text(
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
                                  height: 40,
                                  width: 40,
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
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: Color(0xFF9CABB8),
                                                fontSize: 18.0,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 12.0),
                                          Container(
                                            padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFDBF7E0),
                                              borderRadius: BorderRadius.circular(19),
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/successful.png',
                                                  height: 17,
                                                  width: 17,
                                                ),
                                                const SizedBox(width: 6.0),
                                                const Text(
                                                  'Successful',
                                                  style: TextStyle(color: Color(0xFF70E083), fontSize: 12.0),
                                                ),
                                              ],
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
                                  height: 30,
                                  width: 30,
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
                                  decoration: const BoxDecoration(color: Color(0xFF9CABB8), shape: BoxShape.circle),
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
                                  'assets/absa.png',
                                  height: 40,
                                  width: 40,
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
                                              'Absa Bank',
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: Color(0xFF9CABB8),
                                                fontSize: 18.0,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 12.0),
                                          Container(
                                            padding: const EdgeInsets.only(top: 7, left: 10, right: 10, bottom: 7),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFDB0AC),
                                              borderRadius: BorderRadius.circular(19),
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/failed.png',
                                                  height: 17,
                                                  width: 17,
                                                ),
                                                const SizedBox(width: 6.0),
                                                const Text(
                                                  'Failed',
                                                  style:
                                                      TextStyle(color: Color.fromARGB(255, 118, 1, 1), fontSize: 12.0),
                                                ),
                                              ],
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
                                              style: TextStyle(color: Color(0xFF9EADBA), fontSize: 18.0),
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
                                  height: 30,
                                  width: 30,
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
                                  decoration: const BoxDecoration(color: Color(0xFF9CABB8), shape: BoxShape.circle),
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
        ),
      ],
    );
  }
}
