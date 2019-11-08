import 'package:flutter/material.dart';

import 'model_olahraga.dart';
import 'data_olahraga.dart';
import 'item_olahraga.dart';

class HomePage extends StatelessWidget {
  final List<ModelOlahraga> _listOlahraga = Data.listModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cabang Olah Raga"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 256),
        itemCount: _listOlahraga.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemOlahraga(
            modelOlahraga: _listOlahraga[index],
          );
        },
      ),
    );
  }
}
