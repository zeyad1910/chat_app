import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textLabel;
  final VoidCallback onPress;
  CustomButton({required this.textLabel, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            textLabel,
            style: TextStyle(color: Colors.lightBlueAccent),
          ),
        ),
      ),
    );
  }
}
