import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'dart:math';

List<List<String>> ideas = [
  ['1', 'Искусственный интеллект в сфере госуслуг', 'Мы используем ИИ для того, чтобы улучшить качество оказываемых услуг.'],
  ['2', 'Машинное обучение в сфере госуслуг', 'Мы используем МО для того, чтобы улучшить качество оказываемых услуг.'],
  ['3', 'Инновационный подход к тестированию выпускников школ.', 'Идея в том, чтобы найти и использовать новые методы тестирования, как замена ЕГЭ.']
];

//List<Color> colors = [Colors.deepOrange[400], Colors.red[300], Colors.pink[300], Colors.green[300]];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              headline5: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              headline6: TextStyle(
                  color: Colors.deepPurple[300], fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                  color: Colors.deepPurple[300], fontWeight: FontWeight.normal)),
        ),
        home: MyHomePage(headline6: 'Добро пожаловать на ярмарку!')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.headline6}) : super(key: key);
  final String headline6;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
//              bottom: TabBar(controller: TabController(),tabs: <Widget>[Chip(backgroundColor: Colors.white, label: Text('Tech'),)]),
//              actions: <Widget>[
//                IconButton(icon: Icon(Icons.computer,color: Colors.deepPurple[300]), onPressed: null, color: Colors.white,),
//                IconButton(icon: Icon(Icons.camera), onPressed: null)
//              ],
//              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
              centerTitle: true,
//              title: Text('Привет!', style: Theme.of(context).textTheme.headline5),
              elevation: 30,
              backgroundColor: Colors.deepPurple[300],
              pinned: false,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Чекай новые проекты:', style: Theme.of(context).textTheme.headline5),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 300.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int total) {
                  return Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          elevation: 30,
                          color: Colors.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  isThreeLine: true,
                                  leading: GestureDetector(
                                    onTap:() {print('icon tapped');},
                                    child: CircleAvatar(
                                      backgroundColor: Colors.deepPurple[300],
                                      child: Text('${ideas[total][0]}', style: Theme.of(context).textTheme.button),)
                                  ),
                                  title: Text(ideas[total][1], style: Theme.of(context).textTheme.headline6,),
                                  subtitle: Text(ideas[total][2], style: Theme.of(context).textTheme.bodyText1,),
                                ),
                                ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      FlatButton(
                                        color: Colors.deepPurple[300],
                                        child: Text('Хочу помочь!', style: Theme.of(context).textTheme.button),
                                        onPressed: () {/* ... */},
                                      ),
                                      FlatButton(
                                        child: Text('Удачи!', style: Theme.of(context).textTheme.headline6),
                                        onPressed: () {/* ... */},
                                      )
                                    ]
                                )
                              ]
                          )
                      ));
                },
                childCount: ideas.length
              ),
            ),
          ],
        )
    );
  }
}