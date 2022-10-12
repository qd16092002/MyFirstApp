import 'package:flutter/material.dart';
import 'package:untitled/screens/home/Bagri/work.dart';

class WorkList extends StatelessWidget {
  const WorkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width ,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child:
                // dungf grid view nha, chu k phai lam kieu nay
                Column(
                  children: [
                    Row(
                      children: const [
                        Work( namework:'Quản lý vườn' ,trai: 32, tren: 56),
                        Work( namework:'Quản lý vườn' ,trai: 43, tren: 56),
                      ],
                    ),
                    Row(
                      children: const [
                        Work( namework:'Quản lý vườn' ,trai: 32, tren: 41),
                        Work( namework:'Quản lý vườn' ,trai: 43, tren: 41),
                      ],
                    ),
                    Row(
                      children: const [
                        Work( namework:'Quản lý vườn' ,trai: 32, tren: 41),
                        Work( namework:'Quản lý vườn' ,trai: 43, tren: 41),
                      ],
                    ),
                  ],
          ),
        )
      ),
    );
  }
}
