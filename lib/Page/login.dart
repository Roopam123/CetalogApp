import 'package:flutter/material.dart';
import 'package:myapp/Routes.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '';
  bool changeButton = false;
  final _formKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Image.network(
                'https://account.asus.com/img/login_img02.png',height: 250,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name in our CatelogApp",
                style: const TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your Username",
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.indigo),
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                      ),
                      onChanged: (value){
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (value){
                        if (value==null || value.isEmpty){
                          return "Please Enter Username";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.indigo),
                        hintStyle: TextStyle(color: Colors.indigo),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                      ),
                      validator: (value){
                        if (value==null||value.isEmpty){
                          return "Please Enter Password";
                        } else if (value.length<6){
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()){
                          setState(() {
                            Navigator.pushNamed(context, MyRoutes.Home);
                          });
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
