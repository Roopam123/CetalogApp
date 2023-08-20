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
        color: Colors.white,
        child: ListView(
          children:  [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: const Text("Roopam",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  accountEmail: const Text("roopamr2411@gmail.com",style: TextStyle(color: Colors.black),),
                decoration: BoxDecoration(color: Colors.white),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.black,),
              title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.black,),
              title: Text('Profile',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.black,),
              title: Text('Email',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.location,color: Colors.black,),
              title: Text('Location',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
