import 'package:flutter/material.dart';
import 'package:npower_discussion/main.dart';




//ENROLLMENT PAGE
class EnrollmentPage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(
          title: Text("NPOWER ENROLLMENT",
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.green[100],
        ),
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("GENERAL FEEDS"),
              onTap:(){
                Navigator.of(context).pop(); //
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScaffold()),
                );                
              }
            ),
            ListTile(
              title: Text("ENROLLMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnrollmentPage()),
                );                
              }              

            ),
            ListTile(
              title: Text("PAYMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );                
              }
            ),
            ListTile(
              title: Text("FAQ"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              }
            ),                                    
          ],
        ),
      ), 
      body: Center(
        child: Text("ENPOWER ENROLLMENT"),
      ),             
        );
    }
}

//FAQ PAGE

class FaqPage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(
          title: Text("F.A.Q",
          style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.green[100],
        ),
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("GENERAL FEEDS"),
              onTap:(){
                Navigator.of(context).pop(); //
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScaffold()),
                );                
              }
            ),
            ListTile(
              title: Text("ENROLLMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnrollmentPage()),
                );                
              }              

            ),
            ListTile(
              title: Text("PAYMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );                
              }
            ),
            ListTile(
              title: Text("FAQ"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              }
            ),                                    
          ],
        ),
      ), 
      body: Center(
        child: Text("Frequently asked questions"),
      ),             
        );
    }
}

//PAYMENT PAGE

class PaymentPage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return Scaffold(
        appBar: AppBar(
          title: Text("Payment",
          style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.green[100],
        ),
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("GENERAL FEEDS"),
              onTap:(){
                Navigator.of(context).pop(); //
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyScaffold()),
                );                
              }
            ),
            ListTile(
              title: Text("ENROLLMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnrollmentPage()),
                );                
              }              

            ),
            ListTile(
              title: Text("PAYMENT"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );                
              }
            ),
            ListTile(
              title: Text("FAQ"),
              onTap:(){
                Navigator.of(context).pop(); // Close Navigator
                //Call a new function here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              }
            ),                                    
          ],
        ),
      ), 
      body: Center(
        child: Text("PAYMENT INFO"),
      ),             
        );
    }
}