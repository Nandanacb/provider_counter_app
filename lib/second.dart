
import 'package:counter_provider/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState()=> _SecondPageState();
}
class _SecondPageState extends State<SecondPage>{
 
  @override
  Widget build(BuildContext context){
    final counterprovider=Provider.of<CounterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("The count is ${counterprovider.countList.length}")
          ],
        ),
      ),
    );
  }
}