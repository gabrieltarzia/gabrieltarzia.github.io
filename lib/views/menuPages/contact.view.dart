import 'package:flutter/material.dart';

contactView() => Padding(
    padding: const EdgeInsets.all(12),
    child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      const Text(
        'Let’s work together',
        style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman'),
      ),
      const Divider(),
      _contactCard(
        'Home Phone',
        '+55 (11)25558204',
        Icons.phone,
      ),
      _contactCard(
        'CellPhone',
        '+55 (11)983975667',
        Icons.phone_android,
      ),
      _contactCard(
        'Email',
        'gabrieltarzia@gmail.com',
        Icons.email,
      )
    ]));

_contactCard(String title, String subtitle, IconData icon) => ListTile(
      title: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(title, style: const TextStyle(color: Colors.white))
            ],
          )),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white),
      ),
    );
