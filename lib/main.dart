import 'package:flutter/material.dart';
import 'package:flutterapp1/next_page.dart';

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

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  //

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

  String text = "次へ";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("amakake"),
      ),
      body: Center(
        child: Column(//レイズドボタンの上に画像を配置するのでここに書く
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset("images/kame1.png"),
            RaisedButton(
              child: Text(text),
              onPressed: () async {
                //ここに押したら行う処理を書く
                //画面遷移後のコードを書く
               final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => NextPage("amakeさん"),
                ),
                );
               text = result;
               print(result);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.access_alarms,
                size: 40,
              ),
              title: Text("時間"),
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                size: 40,
              ),
              title: Text("お金"),
            ),
           
          ],
        ),
      ),
    );



  }
}
