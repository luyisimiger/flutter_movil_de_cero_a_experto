
import 'package:flutter/material.dart';

const Color _custumColor = Color(0xFFABCC44);

const List<Color> _colorThemes = [
  _custumColor,
  Colors.blue,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.green,
  Colors.indigo,
];

class Apptheme {

  final int selColor;

  Apptheme({
    required this.selColor
  }) : assert(
        selColor >= 0 && selColor <= _colorThemes.length-1,
        "Color must be between 0 and ${_colorThemes.length-1}"
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selColor],
      
      // Tema oscuro
      // brightness: Brightness.dark 
    );
  }
}
