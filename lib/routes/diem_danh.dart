import 'package:flutter/material.dart';
import '../model/diem_danh.dart';
import '../widgets/diem_danh_item.dart';


class DiemDanhScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiemDanhScreenState();
}

class _DiemDanhScreenState extends State<DiemDanhScreen> {
  List<DiemDanh> dsDiemDanh = List<DiemDanh>.generate(10, (index) {
    return DiemDanh(
      tenMon: "Mobile Marketing",
      tongVang: "3/17",
      phanTramVang: "24",
      maMon: "MOB307",
      lop: "MOB307.2",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          itemCount: dsDiemDanh.length,
          itemBuilder: (_, index) => DiemDanhItem(
            diemDanh: dsDiemDanh[index],
            onTap: () {},
          )
      ),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.08),
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))
      ),
    );
  }
}