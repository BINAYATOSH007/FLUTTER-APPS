import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/bin.jpg'),
                ),
                Text(
                  'Binayatosh Panigrahi',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'KellySlab',
                    fontSize: 20.0,
                    letterSpacing: 2.6,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                 height: 30.0,
                 width: 150.0,
                 child: Divider(
                   color: Colors.white,
                 ),
                ),
                Card(

                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                          Icons.phone,
                          color: Colors.lightBlueAccent
                      ),
                      title: Text(
                        '+7008011232',
                        style: TextStyle(
                          fontFamily: 'Kalam',
                          fontSize: 15.0,



                        ),
                      ),
                    )
                ),
                Card(

                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.mail,
                        color: Colors.lightBlueAccent
                    ),
                    title: Text(
                      '2041016089.binayatoshpanigrahi@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Kalam',
                        fontSize: 14.0,



                      ),
                    ),
                  )
                ),



                 Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.home,
                        color: Colors.lightBlueAccent
                    ),
                    title:Text(
                      'kanan vihar ph-2,Patia,Bhubaneswar,odisha',
                      style: TextStyle(
                        fontFamily: 'Kalam',
                        fontSize: 14.0,



                      ),
                    ),
                  )

                ),
                Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                          Icons.school,
                          color: Colors.lightBlueAccent
                      ),
                      title:Text(
                        'SOA UNIVERSITY',
                        style: TextStyle(
                          fontFamily: 'Kalam',
                          fontSize: 15.0,



                        ),
                      ),
                    )

                ),




      ],
    ),
            )
    ));

  }
}
