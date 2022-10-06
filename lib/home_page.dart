import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//you can write it anywhere outside the class

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.purple,
                backgroundImage: AssetImage(
                  'assets/images/navyagupta.jpg',
                ),
              ),
              const Text('Navya Gupta',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                'CSAI Undergrad',
                style: TextStyle(
                  fontSize: 20,fontFamily: 'Inconsolata'
                ),
              ),
          GestureDetector(
            onTap: () {
              final Uri _url = Uri.parse('mailto:guptanavya1808@gmail.com?subject=News&body=New%20plugin');
              _launchUrl(_url);
            },
              child:Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple[100],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'guptanavya1808@gmail.com',
                    ),
                  ],
                ),
              ),
          ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'projects_page');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Projects',
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://www.linkedin.com/');
                  _launchUrl(_url);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.connect_without_contact),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Connect with me on LinkedIn!',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}