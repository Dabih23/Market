import 'package:flutter/material.dart';
import 'package:izs_app/Widgets/content.dart';
import 'package:izs_app/Widgets/parameters.dart';
import 'package:izs_app/Widgets/stories.dart';
import 'package:izs_app/Widgets/top_panel.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 220, child: TopPanel(),),
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Stories(),
                    SizedBox(height: 10,),
                    Text(
                      'Московская область',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Parameters(),
                    SizedBox(height: 10,),
                    Content(),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}

