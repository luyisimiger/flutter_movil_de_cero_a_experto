import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCount", style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),
            
            // opcion 1 --- + recomendada
            Text("Click${ clickCount == 1 ? '':'s' }", style: TextStyle( fontSize: 25))

            // opcion 2
            /*
            if (clickCount == 1)
              Text("Click", style: TextStyle( fontSize: 25)),
            
            if (clickCount != 1 )
              Text("Clicks", style: TextStyle( fontSize: 25))
            */

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                    
          // opcion 1 --- + recomendada
          setState(() {
            clickCount++;  
          });          

          // opcion 2
          // clickCount++;
          // setState(() {});
        },
        child: Icon( Icons.plus_one ),
      ),
    );
  }
}