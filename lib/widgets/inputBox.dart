import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  const Inputbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0), // Add padding around the TextField
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Here', // Hint text inside the input box
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          filled: true,
          fillColor: Colors.grey[200], // Background color for the TextField
        ),
      ),
    );
  }
}
