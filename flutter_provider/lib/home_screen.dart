import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';
import 'count.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text("Counter", style: TextStyle(color: Colors.white),),
      ),


      body: Center(child: Count()),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
              backgroundColor: Colors.blueGrey,
              child: const Icon(Icons.add),
              onPressed: (){
                context.read<Counter>().increment();
              }),

         const SizedBox(height: 10,),

          FloatingActionButton(
            backgroundColor: Colors.blueGrey,
              child: const Icon(Icons.minimize),
              onPressed: (){
                context.read<Counter>().decrement();
              }),
        ],
      ),
    );
  }
}
