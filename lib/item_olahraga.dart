import 'package:flutter/material.dart';

import 'model_olahraga.dart';
import 'page_olahraga.dart';

class ItemOlahraga extends StatelessWidget {
  final ModelOlahraga modelOlahraga;
  ItemOlahraga({this.modelOlahraga});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        child: GridTile(
          child: Image.asset(
            modelOlahraga.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: Container(
            color: Color.fromRGBO(0, 0, 0, 7),
            padding: EdgeInsets.all(8),
            child: Text(
              modelOlahraga.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return PageOlahraga(
              modelOlahraga: modelOlahraga,
            );
          }));
        },
      ),
    );
  }
}
