import 'package:flutter/material.dart';
import 'package:myapp/secreen_tow.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to login secreen")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(color: Colors.grey,
            child: Text("Please enter your email and password",style: TextStyle(fontSize: 20),),
          ),
          Divider(height: 10,),
          TextField(
            decoration: InputDecoration(
                label: Text("Enter your email"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "Username@gmail.com"),
          ),
          Divider(
            height: 20,
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
                label: Text("Enetr your password "),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          Divider(
            height: 20,
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Secreen_tow();
                }));
              },
              icon: Icon(Icons.login),
              label: Text("Login"))
        ]),
      ),
    );
  }
}
