import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import './layouts/narrow_layout.dart';
import './layouts/wide_layout.dart';

const _twitterUrl = 'https://twitter.com/sollymay';
const _githubUrl = 'https://github.com/sollymay';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('test1'),
              ),
              ListTile(
                title: Text('test2'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Salomon May'),
          actions: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {
                _launchURL(_twitterUrl);
              },
              tooltip: 'Twitter',
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.code),
              onPressed: () {
                _launchURL(_githubUrl);
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.envelope),
              onPressed: () {},
            ),
          ],
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return WideLayout();
          } else {
            return NarrowLayout();
          }
        }),
      ),
    );
  }
}

void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
