import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firstpage.dart';

void main() =>
    runApp(MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Login App',
        home: HomeScreen()
    ));

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      resizeToAvoidBottomPadding: false,
      body:

      SingleChildScrollView(
        child: Container(

            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            // color: Colors.white,
            child: Center(
                child: Container(
                  width: 400,
                  height: 1500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        // padding: EdgeInsets.all(20),
                        padding: const EdgeInsets.fromLTRB(80, 20, 80, 1),
                        child: Image.asset(
                          'images/logo.png', width: 40, height: 350,),
                      ),


                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 1.0),
                        //color: Colors.red[300],
                        width: 300,
                        child: Material(
                          elevation: 5.0,

                          color: Colors.orange,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'User ID',
                                fillColor: Colors.grey[200],
                                filled: true
                            ),
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,

                                color: Colors.grey[1500]
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(30, 1.0, 30, 4.0),
                        width: 300,
                        child: Material(
                          elevation: 5.0,
                          color: Colors.orange,
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                fillColor: Colors.grey[100],
                                filled: true

                            ),
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[1500]
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.fromLTRB(100, 8.0, 100, 0),
                        width: 150,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.red[300],
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  10.0))),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => FirstPage()));
                            },
                            child: Text('Login', style: TextStyle(
                                fontSize: 20.0
                            ),
                            ),
                          ),
                        ),
                      ),


                      Container(
                        padding: EdgeInsets.fromLTRB(80, 2, 80, 65),
                        width: 150,
                        height: 110,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.red[300],
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  10.0))),
                          child: Text('Forget Password', style: TextStyle(
                              fontSize: 18.0
                          ),
                          ),
                        ),
                      ),


                    ],
                  ),
                )
            )
        ),
      ),
    );
  }
}

