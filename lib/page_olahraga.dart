import 'package:flutter/material.dart';

import 'model_olahraga.dart';

class PageOlahraga extends StatelessWidget {
  final ModelOlahraga modelOlahraga;

  PageOlahraga({this.modelOlahraga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(modelOlahraga.title),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              modelOlahraga.imageUrl,
              fit: BoxFit.cover,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                modelOlahraga.description,
                textAlign: TextAlign.justify,
              ),
            ),
            Divider(),
          ],
        ));
  }
}
