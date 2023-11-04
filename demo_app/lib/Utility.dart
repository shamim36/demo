import 'package:flutter/material.dart';

AlertDialog alertDialog(context) {
  return AlertDialog(
    title: const Text('Login Failed! Try Again!!'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('OK'),
      ),
    ],
  );
}

DecoratedBox AppDropDownStyle(context) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.green,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      child: DropdownButton(
        value: 'student',
        items: const [
          DropdownMenuItem(
            value: 'student',
            child: Text('student'),
          ),
          DropdownMenuItem(
            value: 'teacher',
            child: Text('teacher'),
          ),
          DropdownMenuItem(
            value: 'admin',
            child: Text('admin'),
          ),
        ],
        onChanged: (value) {},
      ),
    ),
  );
}
