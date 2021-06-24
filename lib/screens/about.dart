import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Nana\'s Green Box',
          style: TextStyle(
            fontFamily: 'Galada',
            fontSize: 26,
          ),
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 20,
            ),
            width: 300,
            height: 250,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/nana-tata.jpg'),
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              'These recipes have been collected over many years.  They consist of recipes passed on from friends and family. They also include recipes cut and clipped from magazines, from the labels off vegetable cans, or bags of sugar. For the longest time Rosie kept these recipes in a Green File box.  Then it happen, during one of our military moves the “GREEN RECIPE BOX” was lost!!  It was about two years later that we found the Green Recipe Box.  We found it in one of the old shipping boxes in the garage.  Once found we decide to put into the computer so we would not lose it again.  Hence, this Electronic Green Recipe Box was born. If you are reading this, then you are family or a friend.  As such you are entitled to add your recipe to this box.  Just contact Rosie or Tony Lacuesta.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Castoro',
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
