import 'package:ecommerceappui/Search.dart';
import 'package:ecommerceappui/User.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 45),
                child: Text(
                  'Ecom App UI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            trailing: Container(
              child: Image.asset(
                'assets/bell.png',
                height: 25,
                width: 25,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => User()));
                      },
                      child: Text('User Screen')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Search()));
                      },
                      child: Text('Search Screen'))
                ],
              ),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
              card(),
            ],
          ),
        ));
  }
}

Widget card() {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          height: 100,
          width: 150,
          child: Image.asset(
            'assets/vivo.jpg',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Iphone 12',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Container(
                  height: 15,
                  child: Image.asset('assets/star.png'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '5.0 (23 reviews)',
                  style: TextStyle(color: Colors.black26),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text('20 Pieces'),
                SizedBox(
                  width: 15,
                ),
                Text(
                  '\$90',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Quantity: 1',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ],
    ),
  );
}
