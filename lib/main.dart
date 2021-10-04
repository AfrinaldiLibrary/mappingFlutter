import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<Map<String, dynamic>> myList = [
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar",],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar", "Editing Video", "Design Grafis", "UI/UX", "Web Developer", "Mobile Developer", "Networking"],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar",],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar", "Editing Video", "Design Grafis", "UI/UX", "Web Developer", "Mobile Developer", "Networking"],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar",],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar", "Editing Video", "Design Grafis", "UI/UX", "Web Developer", "Mobile Developer", "Networking"],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar",],
    },
    {
      "Name" : "Nal",
      "Age" : 29,
      "Skills" : ["Editing Gambar", "Editing Video", "Design Grafis", "UI/UX", "Web Developer", "Mobile Developer", "Networking"],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: ListView(
          children: myList.map((data) {
            List mySkills = data["Skills"];
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age: ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: mySkills.map((skills) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(skills),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              );
          }).toList(),
        ),
      )
    );
  }
}

