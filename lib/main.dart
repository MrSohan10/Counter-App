import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int countValue = 0;
  MyalertDialog (){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Button press 10 time'),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Close'))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Couner App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count:",style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 5,
            ),
            Text(countValue.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {
                    if(countValue>0){
                      setState(() {
                        countValue--;
                      });
                    }
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        countValue++;
                        if(countValue==10){
                          MyalertDialog();
                        }
                      });

                    },
                    child: Text('+', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
