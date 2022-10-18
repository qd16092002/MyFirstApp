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
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          children: const [
            Work(
              namework: 'Quản lý kho',
              imagesofwork: 'assets/images/quanlykho.png',
            ),
            Work(
              namework: 'Quản lý chi tiêu',
              imagesofwork: 'assets/images/quanlychitieu.png',
            ),
            Work(
              namework: 'Danh sách công việc khoán',
              imagesofwork: 'assets/images/danhsachcongvieckhoan.png',
            ),
            Work(
              namework: 'Công việc hàng ngày',
              imagesofwork: 'assets/images/congviechangngay.png',
            ),
          ],
        ),
      ),
    );
  }
}
