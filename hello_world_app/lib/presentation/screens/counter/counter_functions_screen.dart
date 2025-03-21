import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Functions"),
        
        // leading, a la izquierda
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.refresh)
        ),
        
        // actions, a la derecha
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.plus_one)
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.exposure_plus_2)
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCount", style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
            Text("Click${ clickCount == 1 ? '':'s' }", style: TextStyle( fontSize: 25))
          ],
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [          
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              clickCount = 0;
              setState(() {});
            },
          ),
          
          const SizedBox( height: 10),
          
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              clickCount++;
              setState(() {});
            },
          ),
          
          const SizedBox( height: 10),
          
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (clickCount == 0) return;
              clickCount--;
              setState(() {});
            },
          )
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}