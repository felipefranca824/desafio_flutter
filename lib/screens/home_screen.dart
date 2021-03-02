
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Desafio'),
        centerTitle: true,
      ),
      body: 
        Column(
          children: [
            TextField(
        decoration: InputDecoration(
          hintText: 'Volume do Galão',
          
        ),
      ),
      TextField(
        decoration: InputDecoration(
          hintText: 'Quantidade de garrafas',
          
        ),
      ),
      Expanded(
        child: ListView.builder(
        itemCount: 4,
        itemBuilder: _buildList,
      )
      ),
          ],
        ),
      
    );

  }

  Widget _buildList(context, index){
    print(index);
      return Row(
        children: [
          Text('Garrafa ${index + 1}'),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                
              ),
            )
          )
        ],
      );
    }
}