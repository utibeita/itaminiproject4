import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List BestFriendsData = [{"info": "Chidera: chidera@gmail.com"},
    {"info": "Princess: princess@gmail.com"},
    {"info": "Emmanuel: emmanuelcletus11@gmail.com"},
    {"info": "Uduak: uduakntuen@gmail.com"},
    {"info": "Jennifer: jenniferkuma@yahoo.com"},
    {"info": "Ukeme: itaukeme@gmail.com"},
    {"info": "Itoro: itoroakpan@yahoo.com"},
    {"info": "Goodness: goodnessuwaechi@yahoo.com"},
    {"info": "Esther: estherpeace@gmail.com"},
    {"info": "Anthony: anthonyameh@gmail.com"}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Of Utibe Ita's Best Friends"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: BestFriendsData.length,
          itemBuilder: (context,index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
              padding:EdgeInsets.all(20),
              child: Text(BestFriendsData[index]['info'],style: TextStyle(fontSize:16,
              fontWeight: FontWeight.bold),),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {  },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
