
import 'package:desafio_galoes/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final HomeController _homeController = HomeController();
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
        controller: _homeController.gallonController,
        
      ),
      TextField(
        decoration: InputDecoration(
          hintText: 'Quantidade de garrafas',
          
        ),
        controller: _homeController.quantifyController,
        onSubmitted: _homeController.submit(),

      ),
      Expanded(
        child: ListView.builder(
        itemCount: _homeController.quantify,
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