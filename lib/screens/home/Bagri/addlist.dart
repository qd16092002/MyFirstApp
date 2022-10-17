import 'package:flutter/material.dart';
import 'package:untitled/screens/home/Bagri/work.dart';

import 'color.dart';

class AddWork extends StatefulWidget {
  const AddWork({super.key});

  @override
  State<AddWork> createState() => _AddWorkState();
}

class _AddWorkState extends State<AddWork> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4F7FFA),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.add_circle_rounded, color: ColorOfTheicon),
          tooltip: 'icon',
          onPressed: () {
            setState(() {
              top.add(-top.length - 1);
              bottom.add(bottom.length);
            });
          },
          iconSize: 44,
          color: Colors.black,
        ),
        actions: const <Widget>[
          Icon(
            Icons.circle_notifications,
            color: ColorOfTheicon,
            size: 44,
          ),
        ],
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GridView.count(crossAxisCount: 2,
                childAspectRatio: 0.9,
                children: const [
                  //Work(namework: 'Quản lý vườn'),
                ],);
              },
              childCount: top.length,
            ),
          ),
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GridView.count(crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  children: const [
                    //Work(namework: 'Quản lý công việc'),
                  ],);
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}
