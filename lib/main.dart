import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

List<List<String>> ideas = [
  ['1', 'Искусственный интеллект в сфере госуслуг', 'Мы используем ИИ для того, чтобы улучшить качество оказываемых услуг.'],
  ['2', 'Машинное обучение в сфере госуслуг', 'Мы используем МО для того, чтобы улучшить качество оказываемых услуг.'],
  ['3', 'Инновационный подход к тестированию выпускников школ.', 'Идея в том, чтобы найти и использовать новые методы тестирования, как замена ЕГЭ.']
];

List<Color> colors = [Colors.deepOrange[400], Colors.red[300], Colors.pink[300], Colors.green[300]];

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
              headline6: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal)),
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
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              centerTitle: true,
              title: Text('Привет!', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 28, fontWeight: FontWeight.bold)),
              elevation: 30,
              backgroundColor: Colors.white,
              pinned: false,
              expandedHeight: 100.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Чекай новые роекты:', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18)),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 200.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int total) {
                  return Center(
                      child: Card(
                          elevation: 30,
                          color: colors[Random().nextInt(colors.length)],
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.account_circle,size: 50,),
                                  title: Text(ideas[total][1], style: Theme.of(context).textTheme.headline6,),
                                  subtitle: Text(ideas[total][2], style: Theme.of(context).textTheme.bodyText1,),
                                ),
                                ButtonBar(
                                    alignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      OutlineButton(
                                        borderSide: BorderSide(color: Colors.white,width: 3),
                                        child: Text('Хочу помочь!', style: Theme.of(context).textTheme.headline6),
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