import 'package:flutter/material.dart';
import 'homepage.dart';

class FristPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _FristPage();
  }
}
class _FristPage extends State<FristPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('img/img.png'),
            const Text('Online School ',style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              child: const Text('Home study during the pandemic,lots of learning. Lost of professional teachers, and easy to understand . ',style: TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
              ),),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Get Started',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        elevation: 2,
        backgroundColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }

}