import 'main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});
  final String title;

  @override
  State<SecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<SecondPage> {
  void _decrementCounter(){
    setState(() {
    });

  }

  @override
  Widget build(BuildContext context) {
    //final _flutterAppIconsPlugin = FlutterAppIcons();
    debugPrint("error debugPrint");

    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.blueGrey.shade100,

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextSection(
              description:
              'Kom så dansar vi',
            ),
            const Image(
                image: NetworkImage('https://plus.unsplash.com/premium_photo-1661340623773-e8abc9924d46?q=80&w=1175&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
            ),
            const Image(
                image: NetworkImage('https://plus.unsplash.com/premium_photo-1681841114086-48d899e19b90?q=80&w=1203&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
            ),
            const Image(
                image: NetworkImage('https://images.unsplash.com/photo-1593769665146-1116a2bdfbab?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
            ),//FilledButton.icon(

//icon: Icon(Icons.add_circle),
               // onPressed: () => {_flutterAppIconsPlugin.setIcon( icon: "lotus-flower.png")},
               // label: Text("SetIcon")),
        FilledButton(onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "First page title")))
        }, child: const Text("Click here to go back")),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

