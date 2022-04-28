import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Stor(isActive: true, image: 'assets/images/stor1.jpg', title: 'Экспертиза \nработ'),
            SizedBox(width: 8,),
            Stor(isActive: true, image: 'assets/images/stor2.png', title: 'Дом \nBLYSKAR'),
            SizedBox(width: 8,),
            Stor(isActive: false, image: 'assets/images/stor3.png', title: 'Нас не просили, \nно мы сделали'),
            SizedBox(width: 8,),
            Stor(isActive: false, image: 'assets/images/stor4.jpg', title: 'Инстаграмная \nлестница'),
            SizedBox(width: 8,),
          ],
        ),
      ),
    );
  }
}

Widget Stor({isActive, title, image}) {
  return Container(
    width: 100,
    decoration: BoxDecoration(
      border: isActive ? Border.all(color: Colors.purple) : null,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover
      )
    ),
    clipBehavior: Clip.hardEdge,
  child: Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.6),
          Colors.black.withOpacity(.2),
        ]
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 11),)
      ),
    ),
  ),
  );
}