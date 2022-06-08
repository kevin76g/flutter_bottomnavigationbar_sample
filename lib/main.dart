import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const imagePath = 'assets/images/fish1.jpeg';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter BottomNavigationBar Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        alignment: Alignment.center,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_drop_down_circle),
                title: const Text(
                  'Roses and trams',
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Text(
                  'バラと路面電車',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'The pink roses are in full bloom.The pink roses are in full bloom.The pink roses are in full bloom.',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text(
                      'GET THE ROSE',
                      style: TextStyle(color: Color(0xFF6200EE)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text(
                      'NO THANKS',
                      style: TextStyle(color: Color(0xFF6200EE)),
                    ),
                  ),
                ],
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  imagePath,
                ),
              ),
              // Image.asset('assets/card-sample-image-2.jpg'),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
