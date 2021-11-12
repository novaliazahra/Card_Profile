import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new ProfilePage(),
    routes: <String, WidgetBuilder>{
      'Profile Page': (BuildContext context) => new ProfilePage(),
      'Detail Page': (BuildContext context) => new DetailPage(),
    },
  ));
}

//Membuat Halaman Crad
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/zahra.jpg'),
            ),
            Text('Novalia Zahra', style: TextStyle(
              fontFamily: 'Pasifico',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold), 
            ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100 ,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('+62 831 4379 8682',
              style: TextStyle(
                fontFamily: 'AlexBrush',
                fontSize: 20.0),
                ),
                onTap: () {
            Navigator.pushNamed(context, 'Detail Page');
          },
            ),          
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('novaliazahra01@gmail.com',
              style: TextStyle(
                fontFamily: 'Track',
                fontSize: 20.0),
                ),
            ),        
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('Famale',
              style: TextStyle(
                fontFamily: 'Track',
                fontSize: 20.0),
                ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('Prodi Sistem Informasi',
              style: TextStyle(
                fontFamily: 'Track',
                fontSize: 20.0),
                ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('Uniska MAB',
              style: TextStyle(
                fontFamily: 'Track',
                fontSize: 20.0),
                ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text('Banjarmasin',
              style: TextStyle(
                fontFamily: 'Track',
                fontSize: 20.0),
                ),
            ),
          ),
          ],
        )),
      ),
    );
  }
}


class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('     Nama Lengkap : Novalia Zahra', style: TextStyle(
              fontFamily: 'ComicSans',
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold), 
            ),
          
          ],
        )),
      ),
    );
  }
}