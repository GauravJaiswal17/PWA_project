import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Navigation'),
      ),

      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Gaurav Suvarna"),
              accountEmail: Text("suvarnagaurav19@siesgst.ac.in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("GS"),
              ),
            ),
          ListTile(
            title: const Text("Inbox"),
            leading: const Icon(Icons.mail),
            onTap: (){
              Navigator.pop(context);

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Mailpage()),
              // );
            },
          ),
        const Divider(
            height: 0.1,
          ),
        ListTile(
          title: const Text("Primary"),
          leading: const Icon(Icons.inbox),
          onTap: (){
            Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Primarypage()),
            // );
            },
          ),
          const Divider(
            height: 0.1,
          ),        
        ListTile(
          title: const Text("Social"),
          leading: const Icon(Icons.people),
        ),

        const Divider(
            height: 0.1,
          ),

        ListTile(
          title: const Text("Primary"),
          leading: const Icon(Icons.local_offer),
        ),
       
          ],
          ),
      ),
    );
  }
}