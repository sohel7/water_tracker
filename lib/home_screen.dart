import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 //  int totalConsume=0;
  List<DateTime> waterConsumeList= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Water Tracker'),),
      body: Column(
        children: [
          Text("Total Consum",style: Theme.of(context).textTheme.bodyLarge,),
          Text('${waterConsumeList.length}',style: Theme.of(context).textTheme.headlineLarge,),
       ElevatedButton(onPressed: (){
        waterConsumeList.add(DateTime.now());
         setState(() {});
        }, child: Text("Add")
       ),

        Expanded(
            child: ListView.builder(
            itemCount: waterConsumeList.length,
            // reverse: true, // number decending hobe
            itemBuilder: (context, index){
              return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('$index'),
                    ),
                title: Text(waterConsumeList[index].toString()),

              ),
              );
        })
    )
        ],
      ),
    );
  }
}
