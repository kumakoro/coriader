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
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  String text = '次へ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.title),
        //actions: <Widget>[
        //Icon(Icons.add),
        //Icon(Icons.share),
        //],
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset('images/kumakorojpg.jpg'),
            Image.asset('images/onespots.png'),
            Icon(
              Icons.arrow_back_ios,
              size: 100,
            ),
            //Image.asset('assets/images/onespots.png'),
            //new Image.asset('images/onespots.png',width:300,height:100),
            ElevatedButton(
              child: Text(text),
              onPressed: () async {
                //押したら反応するコードを書く
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage('とも'),
                  ),
                );
                //画面遷移のコードを書く
                text = result;
                print(result);
              },
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
