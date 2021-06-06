import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
              input(),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('History'),
                  ),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                  list(),
                ],
              ),
            ],
          ),
        ));
  }
}

Widget input() {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 20),
    width: 320,
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget list() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/vivo.jpg'),
    ),
    title: Text('Iphone 12'),
    subtitle: Row(
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
    trailing: Text('\$10'),
  );
}
