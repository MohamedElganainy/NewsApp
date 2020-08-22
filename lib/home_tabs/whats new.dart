import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawStories(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _drawHeader() {
    TextStyle _HeaderTitle = TextStyle(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    TextStyle _HeaderDescription = TextStyle(
      fontSize: 16,
      color: Colors.white,
    );
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/pp.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: Text(
                'How Terriers & Royals Gatecrashed Final',
                style: _HeaderTitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Text(
                'Lorem ipsum dolor sit amet , consectetur adipiscing elit , sed do eiusmod.',
                style: _HeaderDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Top Stories",
              style: TextStyle(

                fontSize: 16,
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        /*  Card(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image(
                      image: ExactAssetImage("assets/images/pp2.png"),
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}
