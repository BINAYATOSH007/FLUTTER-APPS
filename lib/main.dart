
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final ImagePicker _picker = ImagePicker();
  File? _image;

  chooseImages() async{
    final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery);
    if(_image!=null){
      setState(() {
        _image=File(image!.path);
      });

    }
  }
  captureImages() async {
    final XFile? image = await _picker.pickImage(
        source: ImageSource.camera);
    if (_image != null) {
      setState(() {
        _image = File(image!.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image != null?Image.file(_image !):const Icon(Icons.image,size: 150,),
            ElevatedButton(onPressed: (){
              chooseImages();
            },onLongPress: (){
              captureImages();
            }, child: const Text("choose/CAPTURE"))

          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
