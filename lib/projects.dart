import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[100],
            title: const Text('My Projects',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed:  () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black,),
            ),
          ),
          body:ListView(
            children: <Widget>[
              Card(
                child:GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/');
                  launchUrl(_url);
                  }, child: const Padding(padding: EdgeInsets.all(8.0),
                  child:ListTile(
                    selectedTileColor: Colors.blue,
                    tileColor: Colors.cyanAccent,
                    leading: FlutterLogo(size: 65.0,),
                    title:Text('Project 1',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25, fontFamily: 'Rubik'),
                    ),
                    subtitle: Text('Project to demonstrate what I learned in GDSC Flutter circle',style: TextStyle( fontSize: 16.7, fontFamily: 'Inconsolata'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              ),
              ),
              Card(
                child:GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse('https://github.com/');
                    launchUrl(_url);
                  }, child: const Padding(padding: EdgeInsets.all(8.0),

                  child:ListTile(
                    selectedTileColor: Colors.blue,
                    tileColor: Colors.cyanAccent,
                    leading: FlutterLogo(size: 65.0,),
                    title:Text('Project 2',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,fontFamily: 'Rubik'),
                    ),
                    subtitle: Text('Project to demonstrate what I learned in GDSC Flutter circle',style: TextStyle( fontSize: 16.7,fontFamily: 'Inconsolata'),),

                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                ),
              ),
              Card(
                child:GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse('https://github.com/');
                    launchUrl(_url);
                  }, child: const Padding(padding: EdgeInsets.all(8.0),
                  child:ListTile(
                    selectedTileColor: Colors.blue,
                    tileColor: Colors.cyanAccent,
                    leading: FlutterLogo(size: 65.0,),
                    title:Text('Project 3',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,fontFamily: 'Rubik'),
                    ),
                    subtitle: Text('Project to demonstrate what I learned in GDSC Flutter circle',style: TextStyle( fontSize: 16.7,fontFamily: 'Inconsolata'),),

                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                ),
              ),
            ],
          ),
      ),
    );

  }
}


Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

