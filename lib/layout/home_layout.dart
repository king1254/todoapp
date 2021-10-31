// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            'hi everone ',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.add,
          ),
        ),
    bottomNavigationBar: BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
         type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              onTap: (currentIndex) {
                print(currentIndex);
              },
     items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle_outline,
                  ),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.archive_outlined,
                  ),
                  label: 'Archived',
                ),
              ],
    )
        );
  }
}
