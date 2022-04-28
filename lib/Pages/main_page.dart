import 'package:flutter/material.dart';
import 'package:izs_app/Pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  late TabController _tabcontroller;

  int _currentTabIndex = 0;

    final _TabContent = <Widget>[
      const HomePage(),
      Container(color: Colors.white),
      Container(color: Colors.yellow),
      Container(color: Colors.green),
      Container(color: Colors.blue),
    ];

    final _Tabs = <Tab>[
      Tab(child: Column(children: [
      Icon((Icons.home), color: Color.fromRGBO(169, 183, 197, 1)),
      Text('Главная', softWrap: false,style: TextStyle(color: Color.fromRGBO(169, 183, 197, 1), fontSize: 10),)
      ],),),
      Tab(child: Column(children: [
        Icon(Icons.import_contacts, color: Color.fromRGBO(169, 183, 197, 1)),
        Text('Сервисы',softWrap: false, style: TextStyle(color: Color.fromRGBO(169, 183, 197, 1), fontSize: 10))
      ],),),
      Tab(child: Column(children: [
        Icon(Icons.adjust, color: Color.fromRGBO(169, 183, 197, 1)),
        Text('Мой проект',softWrap: false, style: TextStyle(color: Color.fromRGBO(169, 183, 197, 1), fontSize: 10))
      ],),),
      Tab(child: Column(children: [
        Icon(Icons.bookmark_border, color: Color.fromRGBO(169, 183, 197, 1)),
        Text('Избранное',softWrap: false, style: TextStyle(color: Color.fromRGBO(169, 183, 197, 1), fontSize: 10))
      ],),),
      Tab(child: Column(children: [
        Icon(Icons.perm_identity, color: Color.fromRGBO(169, 183, 197, 1)),
        Text('Меню',softWrap: false, style: TextStyle(color: Color.fromRGBO(169, 183, 197, 1), fontSize: 10))
      ],),),
    ];

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(
      length: _TabContent.length, 
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabcontroller,
        children: _TabContent,
      ),
      bottomNavigationBar: Container(
        child: Material(
            color: Colors.white,
            child: Expanded(
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 1),
                tabs: _Tabs,
                controller: _tabcontroller,
              ),
            ),
          ),
      ),
    );
  }
}


