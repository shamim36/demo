
import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  var jsonfile = [
    {"name": "Shamim", "description": "Degree : Bsc","contact":"017xxxxxxxx"},
    {"name": "Karim", "description": "Degree : Bsc","contact":"017xxxxxxxx"},
    {"name": "Rahim", "description": "Degree : Bsc","contact":"017xxxxxxxx"},
    {"name": "Tony", "description": "Degree : Bsc","contact":"017xxxxxxxx"},
    {"name": "Unkown", "description": "Degree : Phd","contact":"017xxxxxxxx"},
    {"name": "Bruce", "description": "Degree : Msc","contact":"017xxxxxxxx"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 207, 216),
      appBar: AppBar(
        title: Center(
          child: Text('Teacher Contact Info'),
        ),
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Teacher Name',
                          label: Text('Teacher Name'),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 20,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          label: Text('Search'),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 70,
              child: ListView.builder(
                itemCount: jsonfile.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Row(
                        children: [
                          Icon(Icons.image),
                          Text(
                            "${jsonfile[index]["name"]}",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description: null',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'ContactInfo: ${jsonfile[index]["contact"]}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${jsonfile[index]["description"]}",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),

      ),
    );
  }
}
