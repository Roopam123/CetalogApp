import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatelogApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Roopam Rahangdale"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
