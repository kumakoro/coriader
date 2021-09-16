import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Jリーグツイッターまとめ'),
    );
  }
}// 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
// xxxookumaxxx@gmail.com

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.title}) : super(key: key);

  //ストリングのリストを10000個つくるリスト

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final items = List<String>.generate(50, (i) => "Item $i");

  final iteme1 = ['札幌','仙台','鹿島'];

  int _counter = 0;
  String text = '次へ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
          child:ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 640.0,
                color: Colors.red,
              ),
              Container(
                width: 320.0,
                color: Colors.blue,
              ),
              Container(
                width: 320.0,
                color: Colors.green,
              ),
              Container(
                width: 320.0,
                color: Colors.yellow,
              ),
              Container(
                width: 320.0,
                color: Colors.orange,
              ),
            ],
          )
        /*
        child: ListView.builder(
          itemCount: iteme1.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(iteme1[index]),
            );
          },
        ),
        */
      ),
    );
  }
}
