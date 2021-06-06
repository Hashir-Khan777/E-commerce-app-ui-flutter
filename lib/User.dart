import 'package:ecommerceappui/Login.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
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
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              user(context),
              Container(
                margin: EdgeInsets.only(top: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account Information',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w800),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/edit.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Full Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'User',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'abc@gmail.com',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Phone',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      '03123456789',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'Jawan Pakistan',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Gender',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Date of Birth',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'Dec 22, 2003',
                      style: TextStyle(color: Colors.black26),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget user(context) {
  return Row(
    children: [
      Container(
        height: 150,
        child: Image.asset('assets/user.png'),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'abc@gmail.com',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Logout'))
        ],
      ),
    ],
  );
}
