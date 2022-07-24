import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../minor_screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: InkWell(
              onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const SearchScreen()));
              },
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow, width: 1.4),
                    borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                  Icons.search,
                                  color: Colors.grey)
                            ),
                            Text('What are you looking for?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey),
                            )
                          ]
                        ),
                        Container(
                            height: 32,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                'Search',
                                style:  TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                )
                              )
                            )
                        )
                      ],
                    ),
              )
            ),
            bottom: const TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 8,
              isScrollable: true,
              tabs: [
                const repeatedTab(label: 'Men'),
                const repeatedTab(label: 'Woman'),
                const repeatedTab(label: 'Shoes'),
                const repeatedTab(label: 'Bags'),
                const repeatedTab(label: 'Eletronics'),
                const repeatedTab(label: 'Accessories'),
                const repeatedTab(label: 'Home & Garden'),
                const repeatedTab(label: 'Kids'),
                const repeatedTab(label: 'Beauty'),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text('Men screen')),
            Center(child: Text('Woman screen')),
            Center(child: Text('Shoes screen')),
            Center(child: Text('Bags screen')),
            Center(child: Text('Eletronics screen')),
            Center(child: Text('Accessories screen')),
            Center(child: Text('Home & Garden screen')),
            Center(child: Text('Kids screen')),
            Center(child: Text('Beauty screen')),
          ],),
        )
    );
  }
}

class repeatedTab extends StatelessWidget {
  final String label;
  const repeatedTab({
    Key? key,
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Tab(child: Text(label, style: TextStyle
      (color: Colors.grey.shade600),),);
  }
}