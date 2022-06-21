import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Liquid extends StatelessWidget {
  const Liquid({Key? key}) : super(key: key);

  
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          color: Colors.deepPurple,  // cor do backgroud de loading
          height: 200,   //tamanho do ícone de loading
          backgroundColor: Colors.deepPurple[200],  // cor do ícone de loading
          animSpeedFactor: 5,   //velocidade da animação
          showChildOpacityTransition: true,  //omite toda a tela (body) durante a animação, ou seja, opacity 100%
          

          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              )
            ],
          )
          ),
        );
      }
    }


    