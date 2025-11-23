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
              SizedBox(height: 5),
              Card(
                elevation: 8, // tinggi bayangan
                color: Colors.yellow,
                child: Text(
                  "Tinggi bayangan Shadow",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "Tinggi bayangan Shadow",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Shape Bingkai persegi panjang",
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Margin Card", style: TextStyle(fontSize: 10.0)),
                ),
              ),
              SizedBox(height: 5),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.red, width: 2),
                ),
                borderOnForeground: true, // false
                child: Text(
                  "Border tidak menimpa konten",
                  style: TextStyle(fontSize: 10.0),
                ),
                // child: Padding(
                // padding: EdgeInsets.all(8),
                // child: Text("Border tidak menimpa konten"),
                // ),
              ),
              SizedBox(height: 5),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Text(
                  "Anti alias clip Card",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
              SizedBox(height: 5),
              Card(
                semanticContainer: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Semantic true",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
