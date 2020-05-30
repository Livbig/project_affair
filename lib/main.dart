import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
//import 'dart:math';

List<List<String>> ideas = [
  ['1', 'ИИ в сфере госуслуг', 'Мы используем ИИ для того, чтобы улучшить качество оказываемых услуг.'],
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
          primaryColor: Color(0xFF161730),
          accentColor: Color(0xFF212244),
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              headline5: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              headline6: TextStyle(
                  color: Colors.deepPurple[300], fontWeight: FontWeight.bold, fontSize: 20),
              bodyText1: TextStyle(
                  color: Colors.deepPurple[300], fontWeight: FontWeight.normal, fontSize: 16)),
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
        appBar: AppBar(
        centerTitle: true,
//              title: Text('Привет!', style: Theme.of(context).textTheme.headline5),
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Чекай новые проекты:', style: Theme.of(context).textTheme.headline5),
        ),
      ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(0),
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(0),
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: <Widget>[
                Category(Color(0xFF008CE8), 'Code', 'assets/code.png', null),
                Category(Color(0xFFFF8C00), 'Culture', 'assets/column.png', null),
                Category(Color(0xFFFFFFFF), 'Med', 'assets/mask.png', null),
                Category(Color(0xFF22E02D), 'Finance', 'assets/growing.png', null),
                Category(Color(0xFFFF3080), 'Social', 'assets/social-care(1).png', null),
                Category(Color(0xFF22e02D), 'Agro', 'assets/harvest.png', null),
              ],
            ))
    );
  }
}

//Card(
//                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//                          elevation: 30,
//                          color: Theme.of(context).accentColor,
//                          child: Column(
//                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                              mainAxisSize: MainAxisSize.max,
//                              children: <Widget>[
//                                ListTile(
//                                  leading: GestureDetector(
//                                    onTap:() {print('icon tapped');},
//                                    child: CircleAvatar(maxRadius: 25,
//                                      backgroundColor: Colors.deepPurple[300],
//                                      child: Text('${ideas[total][0]}', style: Theme.of(context).textTheme.button),)
//                                  ),
////                                  No more than 50 words in title!
//                                  title: Text('${ideas[total][1]}', style: Theme.of(context).textTheme.headline6,),
////                                  users have to write at least 60 words in subtitle!
//                                  subtitle: Text('${ideas[total][2].substring(0,60)}...', style: Theme.of(context).textTheme.bodyText1,),
//                                ),
//                                ButtonBar(
//                                    alignment: MainAxisAlignment.center,
//                                    children: <Widget>[
//                                      FlatButton(
//                                        padding: EdgeInsets.all(10),
//                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
//                                        color: Colors.deepPurple[300],
//                                        child: Text('Хочу помочь!', style: Theme.of(context).textTheme.button),
//                                        onPressed: () {},
//                                      ),
//                                      FlatButton(
//                                        child: Text('Удачи!', style: Theme.of(context).textTheme.headline6),
//                                        onPressed: () {/* ... */},
//                                      )
//                                    ]
//                                )
//                              ]
//                          )
//                      )