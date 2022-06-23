import 'package:flutter/material.dart';

homeView() => Stack(
      children: <Widget>[
        Image.asset(
          'lib/assets/img/background.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.all(42),
          child: (Center(
              child: Column(
            children: const [
              Text('Hi, i\'m Gabriel',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white)),
              Text('I\'m a Web&App developer',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white))
            ],
          ))),
        )
      ],
    );
