 import 'package:flutter/material.dart';

class Textfiledd extends StatelessWidget {
  const Textfiledd({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Sura Name", // This will be the label text shown above the field
        labelStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: Colors.white, // Change label color to white
        ),
        hintText:  "Sura Name",
        hintStyle: TextStyle(color: Colors.white), // White color for hint text
        prefixIcon: Icon(
          Icons.book,
          color: Theme.of(context).colorScheme.secondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 2.0,
          ),
        ),
        // Add textStyle to change the text color inside the field
      
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      style: TextStyle(color: Colors.white), // Text color inside the field
    );
  }
}