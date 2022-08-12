import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // ignore: prefer_const_constructors
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.menu_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("images/car.jpg")),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Ford Mustang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Ford Mustangs are ‘rear wheel drive’ cars, with their engines installed at the front. Special editions of the Ford Mustang have evolved from the original designs.",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.amber,
        ),
        child: NavigationBar(
          animationDuration: const Duration(seconds: 3),
          backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
            () {
              this.index = index;
            },
          ),
          height: 60,
          destinations: const [
            // ignore: prefer_const_constructors
            NavigationDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home_outlined),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.production_quantity_limits_sharp),
                selectedIcon: Icon(Icons.production_quantity_limits_outlined),
                label: 'products'),
            NavigationDestination(
                icon: Icon(Icons.people),
                selectedIcon: Icon(Icons.people_outlined),
                label: 'people'),
            NavigationDestination(
                icon: Icon(Icons.book),
                selectedIcon: Icon(Icons.book_online),
                label: 'projects'),
            NavigationDestination(
                icon: Icon(Icons.task_alt),
                selectedIcon: Icon(Icons.task_alt_outlined),
                label: 'Tasks'),
          ],
        ),
      ),
    );
  }
}
