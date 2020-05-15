import 'package:flutter/material.dart';

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
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
              body2: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.normal)),
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
              title: Text('Добро пожаловать!', style: TextStyle(color: Colors.white, fontSize: 24)),
              elevation: 10,
              backgroundColor: Colors.blueAccent,
              pinned: false,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Проекты:', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 250.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int total) {
                  return Center(
                      child: Card(
                          elevation: 10,
                          color: Colors.white,
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text('Искуственный интеллект в госуслугах', ),
                                  subtitle: Text('Описание проекта'),
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
              ),
            ),
          ],
        )
    );
  }
}