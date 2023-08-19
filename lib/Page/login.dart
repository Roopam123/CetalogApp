import 'package:flutter/material.dart';


void main(){
  runApp(Login());
}


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Image.network(
            'https://account.asus.com/img/login_img02.png',height: 250,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome In Our CatalogApp",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter your Username",
                      labelText: "Username"
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter your Password",
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                    onPressed: (){
                      print("Hello Roopam I am a login button");
                    },
                    child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    primary:Colors.indigo
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
