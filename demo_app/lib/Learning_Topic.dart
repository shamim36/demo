import 'package:demo_app/Teacher_screen.dart';
import 'package:flutter/material.dart';

class Learning_Topic extends StatefulWidget {
  const Learning_Topic({super.key});

  @override
  State<Learning_Topic> createState() => _Learning_TopicState();
}

class _Learning_TopicState extends State<Learning_Topic> {
  var jsonfile = [
    {"name": "Planet", "description": "none"},
    {"name": "Star", "description": "none"},
    {"name": "Solar System", "description": "none"},
    {"name": "Galaxy", "description": "none"},
    {"name": "Black Hole", "description": "none"},
    {"name": "Null", "description": "none"},
    {"name": "Null", "description": "none"},
    {"name": "Null", "description": "none"},
    {"name": "Null", "description": "none"},
    {"name": "Null", "description": "none"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 207, 216),
      appBar: AppBar(
        title: Center(
          child: Text('Learning Topic'),
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
                          hintText: 'Topic',
                          label: Text('Topic'),
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
                            'Description: ',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Contact With Teacher',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Teacher()),
                        ),
                      );
                    },
                    child: const Icon(Icons.contact_page),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
