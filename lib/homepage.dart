import 'package:flutter/material.dart';
import 'const/box.dart';
import 'uiuxpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        leading: IconButton(
          icon: const Icon(Icons.menu_sharp, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Hey Mohammed,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Find a course you want to learn',
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9.5),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.5)),
                      suffixIcon: const Icon(Icons.search,
                          color: Colors.deepPurpleAccent, size: 25),
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
                  children: const <Widget>[
                    Text('Category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Box(
                        img: 'img/img.png',
                        text1: 'UI UX Design',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UiUxPage()));
                        },
                        col: Colors.deepPurpleAccent,
                        text2: '54 course'),
                    SizedBox(width: 10,),
                    Box(
                        img: 'img/img3.png',
                        text1: 'FreeLnance',
                        onTap: () {},
                        col: Colors.lightGreen,
                        text2: '32 course'),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Box(
                        img: 'img/img6.png',
                        text1: 'Photography',
                        onTap: () {},
                        col: Colors.lightBlueAccent,
                        text2: '100 course'),
                    SizedBox(width: 10,),
                    Box(
                        img: 'img/img4.png',
                        text1: 'Marketing',
                        onTap: () {},
                        col: Colors.pinkAccent,
                        text2: '54 course'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.8,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.deepPurpleAccent,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo_sharp,
                color: Colors.grey,
              ),
              label: 'add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_rounded, color: Colors.grey),
              label: 'alert'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.grey),
              label: 'profile'),
        ],
      ),
    );
  }
}
