import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const _twitterUrl = 'https://twitter.com/sollymay';
const _githubUrl = 'https://github.com/sollymay';
const _mailUrl = 'mailto:sollymay@gmail.com';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 220,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 11, left: 20),
                  child: Text(
                    'Salomon May',
                    style: GoogleFonts.patrickHand(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () => () {},
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('About'),
                  onTap: () => () {},
                ),
                ListTile(
                  leading: Icon(Icons.label),
                  title: Text('Blog'),
                  onTap: () => () {},
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            height: 200,
            child: Column(
              children: [
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Contact',
                    style: GoogleFonts.patrickHand(
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.twitter),
                  title: Text('Twitter'),
                  onTap: () {
                    _launchURL(_twitterUrl);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text('GitHub'),
                  onTap: () {
                    _launchURL(_githubUrl);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('Email'),
                  onTap: () {
                    _launchURL(_mailUrl);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

void _launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
