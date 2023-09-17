import 'package:flutter/material.dart';
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

class HomeScreen extends StatelessWidget{
  List<String> items = [
    'Apples',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('My Shopping List', style: TextStyle(
              fontSize: 24
          ),),
          actions: [Icon(Icons.shopping_cart_rounded, size: 30,)],
          backgroundColor: Colors.blue,

        ),

        body: Scrollbar(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: ( context, index) {
                return ListTile(
                  title: Text(items[index]),
                  leading: Icon(Icons.shopping_basket),
                );
              },
              separatorBuilder: ( context, index) {
                return Divider();
              },
            )
        )
    );
  }
}