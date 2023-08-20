import 'package:flutter/material.dart';
import 'package:myapp/Page/ItemWidget.dart';
import '../Models/catelog.dart';
import 'Drawer.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dammyList = List.generate(100, (index) => CatelogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("CatalogApp"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dammyList.length,
            itemBuilder: (context,index){
              return ItemWidget(items: dammyList[index]);
            },
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}