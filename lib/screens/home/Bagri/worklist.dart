import 'package:flutter/material.dart';
import 'package:untitled/screens/home/Bagri/work.dart';

class WorkList extends StatelessWidget {
  const WorkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(top: size.height * 3 / 7),
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
            child:
            GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                children: const [
                  Work(namework: 'Quản lý vườn'),
                  Work(namework: 'Quản lý vườn'),
                  Work(namework: 'Quản lý quy trình'),
                  Work(namework: 'Quản lý quy trình'),
                  Work(namework: 'Danh sách công việc'),
                  Work(namework: 'Danh sách công việc'),
                  Work(namework: 'Quản lý vườn'),
                  Work(namework: 'Quản lý vườn'),
                  Work(namework: 'Quản lý mùa vụ'),
                  Work(namework: 'Quản lý mùa vụ'),
                ],
              ),
            ),


    );
  }
}
