
import 'package:flutter/material.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  _loadingScreenState createState() => _loadingScreenState();
}
bool replace = false;
class _loadingScreenState extends State<loadingScreen> {
  void replaceRoute()async{
    await Future.delayed(Duration(milliseconds: 1000));
    Navigator.pushReplacementNamed(context, '/home');

  }
  @override
  void initState() {
    super.initState();
    replaceRoute();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1),
            height: 200,
            width: 200,
            child: Image.asset('assets/spotify-logo-png-7053.png')
        ),
      ),
    );
  }
}
