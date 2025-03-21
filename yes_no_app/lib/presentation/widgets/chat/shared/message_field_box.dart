import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    
    // final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent ),
      borderRadius: BorderRadius.circular(40)
    );


    final inputDecoration = InputDecoration (  
      /*
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: colors.primary),
        borderRadius: BorderRadius.circular(10)
      ),
      */

      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          print("valor caja texto");
        } ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("onFieldSubmitted: $value");
      },
      onChanged: (value) {
        print("onChanged: $value");
      },
    );
  }
}