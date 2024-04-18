import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MaterialApp(
      home: const Homepage(),



      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent,
      ),
    );
  }
  
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 110.0,
                height: 110.0,

                decoration: BoxDecoration(
                  color: Colors.white,


                  borderRadius: BorderRadius.circular(20.0),
                ),

                child: const FlutterLogo(
                  size: 100.0,
                ),
              ),
              const SizedBox(width: 30.0),
              const Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Text("I called a"),
                  Text("Flutter logo Widget"),
                ],
              ),
            ],
          ),
          const Biodata(
            nama: "Iqbal Immaduddin Rachman",
            nim: "20210801476",
            ket: "Tugas 2 Selesai",
          ),
        ],
      ),
    );
  }
  
}

class Biodata extends StatelessWidget{
  const Biodata({
    super.key,
    required this.nama,
    required this.nim,
    required this.ket,
    });
final String nama;  
final String nim; 
final String ket;  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 200,
      child: Column( children: [
        Text("Nama: $nama"),
        Text("NIM: $nim"),
        const Divider(color: Colors.black,
        thickness: 0.7,
        ),
        Text(
          "Keterangan : $ket", 
          style: const 
          TextStyle(fontWeight: FontWeight.bold,),
        ),
      ],
    ),
    );
  }
}