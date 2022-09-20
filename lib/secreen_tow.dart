import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Secreen_tow extends StatelessWidget {
  const Secreen_tow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcom to serch page"),),
      body: Column(
        children: [
          Center(
              child: TextField(
            decoration: InputDecoration(
                label: Text("Search here"),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
          )),
           ElevatedButton.icon(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Myapp();
                }));}, icon: Icon(Icons.arrow_back), label:Text("back "))
        ],
      ),
    );
  }
}
