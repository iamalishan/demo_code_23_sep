import 'package:demo_code_23_sep/detailpage.dart';
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
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
    },
    {
      "name": "Samsung",
      "picture":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ristoonstage.jpg/220px-Ristoonstage.jpg",
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
                  return BrandCard(
                    name: dummydata[index]['name'],
                    picture: dummydata[index]['picture'],
                  );
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    name: name,
                    picture: picture,
                  )),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                '$name',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[300]),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.fitWidth,
                  placeholder: 'assets/spinner-gif-13.gif',
                  image: picture),
            )
          ],
        ),
      ),
    );
  }
}
