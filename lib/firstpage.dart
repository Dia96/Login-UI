import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      child: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text('Welcome to my page'),
          backgroundColor: Colors.red[300],
          actions: <Widget> [
            SizedBox( width: 100.0,
              child: OutlineButton(
                  borderSide: BorderSide(width: 0.2),

                  child: Text('Sign Out', style: TextStyle(color: Colors.white,
                    fontSize: 16
                  ),

                  ),
                  onPressed:   () {

                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  }
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.red[300],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.arrow_back),
             backgroundColor: Colors.yellow,
              label: ''
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: ''
            ),
            BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank),
                label: ''
            ),
          ],
        ),
        body: Center(
          child: Text(
              'Deepanjali Tripathi',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red[300],
            ),
          ),
        ) ,



      )

      /**
      Center(
        child: Text('Deepanjali Tripathi'),
      ),
      **/

    );
  }
}
