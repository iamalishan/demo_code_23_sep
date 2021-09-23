import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final name, picture;
  const DetailPage({
    Key,
    this.name,
    this.picture,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20, 0, 0),
                child: Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 100,
                  width: 100,
                  child: Image.network(widget.picture)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Description Goes Here'),
              ),
              Text('Price : 200'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Specifications:',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Data DataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataDataData'),
              )),
              TextButton(onPressed: () {}, child: Text('More Inof')),
              ElevatedButton(onPressed: () {}, child: Text('Buy Now'))
            ],
          ),
        ),
      ),
    );
  }
}
