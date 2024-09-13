import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {
  static const String ROUTE_NAME = '/developerScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: [
              Text('Name: Rahul Deb Mondal'),
              Text('Id: 11190120316'),
            ],
          ),
        ),
      ),
    );
  }
}
