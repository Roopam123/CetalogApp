import 'package:flutter/material.dart';
import '../Models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Items items;
  const ItemWidget({super.key, required this.items}):assert(items != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        onTap: (){
          print("Hello Roopam Card is Clicked");
        },
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text('\$${items.price}',
          style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 17),),
      ),
    );
  }
}


