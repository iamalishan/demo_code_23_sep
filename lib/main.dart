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
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "Samsung",
      "picture": "assets/drawable/view_business_ic.png",
    },
    {
      "name": "Huawei",
      "picture": "assets/drawable/notification_img.png",
    },
    {
      "name": "Oppo",
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "Vivo",
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "Haeir",
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "Lenovo",
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "HTC",
      "picture": "assets/drawable/profile_ic.png",
    },
    {
      "name": "LG",
      "picture": "assets/drawable/profile_ic.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
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
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Card();
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
    return Container(
      child: Text('$name'),
    );
  }
}
