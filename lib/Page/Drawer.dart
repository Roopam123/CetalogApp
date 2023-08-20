import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Page/home.dart';
import 'package:myapp/Routes.dart';

class MyDrawer extends StatelessWidget {
  var imageUrl = "https://media.licdn.com/dms/image/D4D03AQGZlAP0B8UQUQ/profile-displayphoto-shrink_200_200/0/1691833921230?e=1697673600&v=beta&t=x_MUqwPyJ9isW_InCzZs4K3A37EAyLPGhPXC16NvEYQ";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children:  [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: const Text("Roopam"),
                  accountEmail: const Text("roopamr2411@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text('Profile',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text('Email',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.location,color: Colors.white,),
              title: Text('Location',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
