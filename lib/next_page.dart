import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画像"),
      ),
        body: Container(
          height: double.infinity,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('name'),
              Center(
                child:ElevatedButton(
                  child: Text('戻る'),
                  onPressed: (){
                    //押したら反応するコードを書く
                    Navigator.pop(context, 'JJのJ');
                    //画面遷移のコードを書く
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
