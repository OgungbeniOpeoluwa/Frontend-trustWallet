import 'package:flutter/material.dart';

class ButtonProperty {
  final String name;
  final Color colour;
  final double height;
  final double width;
  // final String to;
  // final BuildContext context;

  const ButtonProperty(this.colour, this.height, this.name, this.width);
}

ButtonStyle buttonStyle(double width, double height) {
  return ButtonStyle(
      fixedSize: WidgetStateProperty.all(
    Size(width, height),
  ));
}

ElevatedButton button(ButtonProperty properties) {
  return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(properties.context, properties.to);
      },
      style: buttonStyle(properties.width, properties.height),
      child: Text(
        properties.name,
        style: TextStyle(color: properties.colour),
      ));
}
