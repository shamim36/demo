import 'package:demo_app/Learning_Topic.dart';
import 'package:demo_app/Utility.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? userName, Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Learn the Universe'),
        ),
        toolbarHeight: 100,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppDropDownStyle(context),
              ),
              TextFormField(
                onChanged: (value) {
                  userName = value;
                },
                decoration: InputDecoration(
                  hintText: 'User Name',
                  label: Text('User Name'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (value) {
                  Password = value;
                },
                decoration: InputDecoration(
                  hintText: 'Password',
                  label: Text('Password'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        if (userName == 'user' && Password == 'user') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => Learning_Topic()),
                            ),
                          );
                        } else {
                          alertDialog(context);
                          setState(() {});
                        }
                      },
                      child: Text('LogIn'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
