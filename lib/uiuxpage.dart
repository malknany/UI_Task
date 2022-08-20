import 'package:flutter/material.dart';
import 'homepage.dart';

class UiUxPage extends StatefulWidget {
  const UiUxPage({Key? key}) : super(key: key);

  @override
  State<UiUxPage> createState() => _UiUxPageState();
}

class _UiUxPageState extends State<UiUxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Text(
              'UI UX Design',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.asset(
                'img/img.png',
                width: 250,
                height: 250,
              ),
              Container(
                decoration:  BoxDecoration(
                  color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('-',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.grey.shade700),),
                    ListTile(
                      title: const Text(
                        'Get to know the UI Desigin',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '12:05 mins',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      leading: const Text(
                        '01.',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                        title: const Text(
                          'How to learn from Google',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          '20:31 mins',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                        leading: const Text(
                          '02.',
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        ),
                        trailing: Ink(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        )),
                    ListTile(
                      title: const Text(
                        'How to grt paid resource for free',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '60 mins',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      leading: const Text(
                        '03.',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      trailing: Ink(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            icon: const Icon(Icons.play_arrow,
                                color: Colors.white),
                            onPressed: () {}),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Build a professional protfolio',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '8:00 mins',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600),
                      ),
                      leading: const Text(
                        '04.',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                      trailing: Ink(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon:
                              const Icon(Icons.play_arrow, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.white,
            child: Image.asset('img/icon.png'),
          ),
          Container(
            margin: const EdgeInsets.only(),
            height: 50,
            width: 150,
            child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              label: const Text(
                'Buy Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
              //elevation: 0.9,
              backgroundColor: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),
    );
  }
}
