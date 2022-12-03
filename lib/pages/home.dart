import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var imgUrl = 'assets/images/inicio.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 ball'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Image.asset(imgUrl),
          ElevatedButton(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              var random = Random().nextInt(8) + 1;
              setState(() {
                imgUrl = 'assets/images/resposta_$random.png';
              });
            },
            child: Text('PERGUNTAR'),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              setState(() {
                imgUrl = 'assets/images/inicio.png';
              });
            },
            child: Text('RECOMEÇAR'),
          )
        ],
      ),
    );
  }
}
