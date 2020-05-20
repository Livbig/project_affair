import 'package:flutter/material.dart';
import 'dart:math';

List<List<String>> ideas = [
  ['1', 'Искусственный интеллект в сфере госуслуг', 'Мы используем ИИ для того, чтобы улучшить качество оказываемых услуг.'],
  ['1', 'Машинное обучение в сфере госуслуг', 'Мы используем МО для того, чтобы улучшить качество оказываемых услуг.']
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
              title: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              body2: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal)),
        ),
        home: MyHomePage(title: 'Добро пожаловать на ярмарку!')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

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
              title: Text('Добро пожаловать!', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 24)),
              elevation: 30,
              backgroundColor: Colors.white,
              pinned: false,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Проекты:', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20)),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 250.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int total) {
                  return Center(
                      child: Card(
                          elevation: 10,
                          color: colors[Random().nextInt(colors.length)],
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.account_circle),
                                  title: Text(ideas[total][1], style: Theme.of(context).textTheme.title,),
                                  subtitle: Text(ideas[total][2], style: Theme.of(context).textTheme.body2,),
                                ),
                                ButtonBar(
                                    children: <Widget>[
                                      FlatButton(
                                        child: Text('Хочу помочь!', style: Theme.of(context).textTheme.title),
                                        onPressed: () {/* ... */},
                                      ),
                                      FlatButton(
                                        child: Text('Надеюсь, у вас получится!', style: Theme.of(context).textTheme.title),
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