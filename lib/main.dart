import 'package:flutter/material.dart';
import 'package:ricedc_mf/book_list/book_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'riceDC-mf',
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


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('riceDC-mf'),
      ),
      backgroundColor: Colors.deepOrange[200],
      drawer: Drawer(
        child: Center(child: Text('Drawer')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/home.jpg',fit: BoxFit.contain),
            RaisedButton(
              child: const Text('ユーザー登録'),
              color: Colors.white,
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: () {},
            ),
            RaisedButton(
              child: const Text('本一覧ページ'),
              color: Colors.white,
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookList()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  ImageWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Image.asset(
          "images/home.jpg",
          fit: BoxFit.contain),
    );
  }
}
