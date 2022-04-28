import 'package:flutter/material.dart';


class Content extends StatefulWidget {
  const Content({ Key? key }) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {


  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(8, (index) {
            return Center(
              child: Container(
                width: 175,
                height: 171,
                child: profile(),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget profile() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: Colors.black.withOpacity(0.2))
    ),
    clipBehavior: Clip.hardEdge,
    child: Stack(

      children: [
        Container(
          height: 110, 
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/images/c1.png'),
            fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Container(
            height: 50,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Навание проекта', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('180 м2 | 6-8,9 млн ₽', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 105, left: 130),
          child: Container(
            height: 14,
            width: 14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.white),
              color: Color.fromRGBO(237, 236, 242, 1),
            ),
            child: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/images/Emblem.png'),
                fit: BoxFit.cover
              )
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}



