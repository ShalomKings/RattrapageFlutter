import 'package:flutter/material.dart';
import 'package:session2/etudiants.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
        home: RootPage(),
    );
    
  }
}
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste Etudiants'),
      ),
      body: const Etudiants() ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        debugPrint('Floating Action Button');
        },
        child:const Icon(Icons.search),
        ),
   );
  }
}