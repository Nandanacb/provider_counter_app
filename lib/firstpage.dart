


import 'package:counter_provider/counterprovider.dart';
import 'package:counter_provider/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState()=>_FirstPageState();
}
class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    final counterprovider=Provider.of<CounterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("First Screen"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage() ));
          }, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("The count is ${counterprovider.countList.length} ",style: TextStyle(fontSize: 20),),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: counterprovider.countList.length,
                itemBuilder: (context,index){
                return ListTile(
                  title: Text("${counterprovider.countList[index]}"),
                );
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: counterprovider.addCountList,
      child: Icon(Icons.add),),
    );
  }
}