
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       title: Text("Home"),
       actions: [
        
       ],
       
      
      ),
      body: Center(child: Text("we are here")),
    );
  }
}
