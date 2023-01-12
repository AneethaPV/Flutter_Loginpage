import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('asset/log3.jpeg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Tovino Thomas',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 400),
                child: Text(
                  'Tovino Thomas is an Indian actor and film producer who prominently works in Malayalam films. He made his debut in 2012 with the film Prabhuvinte Makkal. His breakthrough roles were in the films ABCD, 7th Day and Ennu Ninte Moideen. He starred as the titular character in the Netflix superhero film Minnal Murali.',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
