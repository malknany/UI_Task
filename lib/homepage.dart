import 'package:flutter/material.dart';
import 'const/box.dart';
import 'uiuxpage.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Image.asset('img/img1.png'),
        ],
        leading:  IconButton(icon:const Icon(Icons.menu_sharp,color: Colors.black),onPressed: (){},),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10,right: 10),
        alignment: Alignment.centerLeft,

        child: ListView(
          children:[
            Column(
            children:  <Widget>[
               Container(
                 alignment: Alignment.centerLeft,
                 margin: EdgeInsets.all(10),
                 child: const Text('Hey Mohammed,',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),),
               ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text('Find a course you want to learn',style: TextStyle(
                    fontSize: 15
              ),),
                ),
              Container(
                padding: const EdgeInsets.all(3),
                margin:  const EdgeInsets.all(15),
                child:   TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.5),
                        borderSide: BorderSide(color: Colors.black12,width: 1.5)
                    ),
                    suffixIcon: const Icon(Icons.search,color: Colors.deepPurpleAccent,size: 25),
                    hintText: 'Search for anything',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  keyboardType: TextInputType.text,

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 10,bottom: 15),
                    child: const Text('Category',style:TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                 )),
                  ),
                  Container(
                    margin:const EdgeInsets.only(right: 20,bottom: 15),
                    child: const Text('See all',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    ),),
                  )
                ],
              ),
              Row(
                children: [
                  Box(img: 'img/img.png', text1: 'UI UX Design', onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UiUxPage()));
                  }, col: Colors.deepPurpleAccent,text2: '54 course'),
                  Box(img: 'img/img3.png', text1: 'FreeLnance', onTap: (){}, col: Colors.lightGreen,text2: '32 course'),
                ],
              ),
              Row(
                children: [
                  Box(img: 'img/img6.png', text1: 'Photography', onTap: (){}, col: Colors.lightBlueAccent,text2: '100 course'),
                  Box(img: 'img/img4.png', text1: 'Marketing', onTap: (){}, col: Colors.pinkAccent,text2: '54 course'),
                ],
              ),
            ],
          ),
        ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.8,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.deepPurpleAccent,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp,color: Colors.grey,),label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded,color: Colors.grey),label: 'alert'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.grey),label:'profile'),
        ],
      ),
    );
  }
}
