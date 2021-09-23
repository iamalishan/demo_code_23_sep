import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Code'),
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
  var dummydata = [
    {
      "name": "Apple",
      "picture":
          "https://images.unsplash.com/photo-1580418696996-4f391b748a0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
    },
    {
      "name": "Samsung",
      "picture":
          "https://images.unsplash.com/photo-1568378711447-f5eef04d85b5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c2Ftc3VuZyUyMHBob25lfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    },
    {
      "name": "Huawei",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "Oppo",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "Vivo",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "Haeir",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "Lenovo",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "HTC",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "LG",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
              child: Text(
                'Select Your Mobile Phone Brand',
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummydata.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return BrandCard();
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Send Message',
        child: Icon(Icons.send),
      ),
    );
  }
}

class BrandCard extends StatelessWidget {
  final name;
  final picture;
  BrandCard({this.name, this.picture});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text('$name'),
        ),
      ],
    );
  }
}
