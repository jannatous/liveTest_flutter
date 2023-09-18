import 'package:flutter/material.dart';

import 'livetest6.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad',
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text('Photo Gallery', style: TextStyle(fontSize: 25),),
        leading: Icon(Icons.person, size: 32,),
        actions: [Icon(Icons.add_ic_call, size: 32,)],
      ),
    );
  }
}