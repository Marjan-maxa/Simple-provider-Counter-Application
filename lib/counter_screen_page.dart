import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/counter_provider.dart';
class CounterScreenPage extends StatelessWidget {
  const CounterScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // int number=0;
    final counter=context.watch<CounterProvider>();

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar:AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Counter App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(number.toString(),style: TextStyle(fontSize: 50),),
          Center(child: Text(counter.count.toString(),style: TextStyle(fontSize: 90),)),
          const SizedBox(height: 7,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 110,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                    onPressed: counter.decrement, child: Icon(Icons.minimize,color: Colors.white,)),
              ),
              const SizedBox(width: 10,),
              SizedBox(
                width: 110,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: counter.increment, child: Icon(Icons.add,color: Colors.white,)),
              )
            ],
          )
        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: counter.decrement,child: Icon(Icons.minimize),),
          const SizedBox(width: 7,),
          FloatingActionButton(onPressed: counter.increment,child: Icon(Icons.add),)
        ],
      ),
    );
  }
}
