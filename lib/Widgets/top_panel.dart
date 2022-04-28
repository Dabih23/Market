import 'package:flutter/material.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(67, 154, 134, 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Добро пожаловать \nв ИЖС Маркет!',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ), 
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                Container(
                  height: 105,
                  padding: EdgeInsets.only(left: 8, bottom: 8),
                  width: MediaQuery.of(context).size.width / 2.1 - 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                      Color.fromRGBO(137, 137, 186, 1),
                      Color.fromRGBO(167, 166, 203, 1)
                    ]
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                        'Выберите проект дома,\nа разные застройщики\nпредложат цены',
                        style: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                  ),                  
                ),
                const SizedBox(width: 5,),
                Container(
                  height: 105,
                  padding: EdgeInsets.only(left: 8, bottom: 8),
                  width: MediaQuery.of(context).size.width / 2.1 - 10,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                      Color.fromRGBO(233, 165, 121, 1),
                      Color.fromRGBO(199, 144, 129, 1)
                    ]
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed:() {}, 
                          icon: Icon(Icons.help_outline, color: Colors.white70,)
                        ),
                      ),
                      const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Стройте с ИЖС Genius\nбез убытков и потери\nличного времени',
                        style: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                  ),
                    ],
                  )
                  ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

