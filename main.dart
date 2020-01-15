import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'pages.dart';


class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal : 8.0),
      decoration : BoxDecoration(color: Colors.green[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded(child: title,),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}


class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
        appBar: AppBar(
          title: Text("ENPOWER DISCUSSION"),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("GENERAL FEEDS"),
              onTap:(){
                Navigator.of(context).pop(); //
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
      body: Container(
        child: FutureBuilder(
          future: _getPosts(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            print(snapshot.data);
            if(snapshot.data == null){
                return Container(
                  child: Center(child: Text("Proccessing..."),),
                );
            }else{
                return ListView.builder(itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index)
                  {
                      return ListTile(
                      title: Text(snapshot.data[index].postTitle),
                      );
                },
              );
            }
          },
        ),
      ),       
      );
    
  }

  Future<List<Post>> _getPosts() async{
    var data = await http.get("localhost/xxyyzz/admin_panel/backend/api_connector.php");
    var jsonData = json.decode(data.body);

    List<Post> posts = [];

    for(var p in jsonData){
      Post post = Post(p["post_id"], p["post_title"], p["post_content"], p["post_image_url"], p["post_date"]);
      posts.add(post);
    }

    print(posts.length);
    return posts;
  }
  
}


class Post{
  final int postId;
  final String postTitle;
  final String postContent;
  final String postImageurl;
  final String postDate;

  Post(this.postId, this.postTitle, this.postContent, this.postImageurl, this.postDate);
}
void main(){
  runApp(MaterialApp(
    title: 'My app',
    home: MyScaffold(),
  ));
}

class FooterNav extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState((){
            currentIndex = index;
          });
        },

        items: allDestinations.map(Destination destination){
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            backgroundColor: destination.color,
            title: Text(destination.title)
          );
        }).toList(),  
    );
  }
}
