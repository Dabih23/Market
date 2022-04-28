import 'package:flutter/material.dart';

class Parameters extends StatelessWidget {
  const Parameters({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Categoryy(active: true, title: 'все - 250'),
          SizedBox(width: 7,),
          Categoryy(active: false, title: 'вахверк - 36'),
          SizedBox(width: 7,),
          Categoryy(active: false, title: 'клееный брус - 52'),
          SizedBox(width: 7,),
          Categoryy(active: false, title: 'газобетон - 42'),
        ],
      ),
    );
  }
}

Widget Categoryy({title, active}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: active ? Color.fromRGBO(237, 236, 242, 1) : Colors.white,
        border: Border.all(color: Color.fromRGBO(237, 236, 242, 1)),
        borderRadius: BorderRadius.circular(50),
      ),
    child: Row(
      children: [
        Center(
          child: Text(
                title,
                style: TextStyle(
                  color: active ? Color.fromRGBO(74, 104, 126, 1) : Color.fromRGBO(114, 118, 122, 1),
                  fontSize: 11,
                  fontWeight: active ? FontWeight.bold : FontWeight.normal
                ),
              ),
        ),
      ],
    ),
    
  );
}