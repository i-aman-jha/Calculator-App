import 'package:calculator/pages/unitconv.dart';
import 'package:calculator/pages/standardcalculator.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // elevation: 20,
          // shadowColor: Colors.black,
          title:  const TabBar(
            dividerColor: null,
            labelColor: Color.fromARGB(255, 216, 133, 0),
            unselectedLabelColor: Colors.black,
            indicatorColor: Color.fromARGB(255, 216, 133, 0),
            indicatorWeight: 1,
            tabs: [
              Tab(
                icon: Icon(Icons.calculate_outlined),
              ),
              Tab(
                icon: Icon(Icons.swap_vert_outlined)
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          StandardCalc(),
          UnitConverter()
        ]
        )
      ),
    );
  }
}