// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_print

import 'package:bmii/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:bmii/modules/done_tasks/done_tasks_screen.dart';
import 'package:bmii/modules/new_tasks/new_tasks_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            'hi everone',
          ),
        ),
        body: screens[currentIndex],
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
          currentIndex: currentIndex,
          // ignore: non_constant_identifier_names
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
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
        ));
  }
}

class Satstate {}
