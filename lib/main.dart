import 'package:flutter/material.dart';
import 'package:mobilt_java23_nikolina_vikberg_flutter_v2/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey.shade100),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/01/08/15/54/defile-8495836_1280.jpg'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            FilledButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SecondPage(title: "second page ")))
                    },
                child: const Text("Click here to go to second page.")),
            TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            SingleChildScrollView(
              child: listView(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('Hej på dig ${myController.text} :)'),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.check_box),
      ),
    );
  }

  ListView listView() {
    return ListView(
              padding: const EdgeInsets.all(8),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.blueGrey[600],
                  child: const Center(child: Text('listview')),
                ),
                Container(
                  height: 50,
                  color: Colors.blueGrey[500],
                  child: const Center(child: Text('jodiladdi')),
                ),
                Container(
                  height: 50,
                  color: Colors.blueGrey[400],
                  child: const Center(child: Text('jodiladdi')),
                ),
                Container(
                  height: 50,
                  color: Colors.blueGrey[300],
                  child: const Center(child: Text('jodiladdi')),
                ),
                Container(
                  height: 50,
                  color: Colors.blueGrey[200],
                  child: const Center(child: Text('hooooo')),
                ),
              ],
            );
  }
}

class TextFormFieldSection extends StatelessWidget {
  const TextFormFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            contentPadding: EdgeInsets.only(left: 20.0),
          ),
        ));
  }
}
