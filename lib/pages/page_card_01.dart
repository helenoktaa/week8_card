import 'package:flutter/material.dart';

class MyCardNight extends StatelessWidget {
  const MyCardNight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Card(
                color: Colors.red,
                child: Text(
                  "Card With Color",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.red,
                ),
                child: Text(
                  "Container with color",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
