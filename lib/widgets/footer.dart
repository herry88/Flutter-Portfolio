import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  final double iconSize = 35;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 5, vertical: 30),
          color: AppColors.blackTransparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/me.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _socialIcons(),
                ],
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(width: 600, child: Contact())))
            ],
          ),
        ));
  }

  Widget _smallScreen(BuildContext context) {
    return Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.bottomLeft,
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 30),
          color: AppColors.blackTransparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/me.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _socialIcons(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(width: 600, child: Contact())))
            ],
          ),
        ));
  }

  Widget _socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {
            html.window.open('https://github.com/GeekAbdelouahed', 'Github');
          },
          child: Image.asset(
            'images/github.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            html.window.open(
                'https://www.linkedin.com/in/abdelouahed-medjoudja/',
                'Linkedin');
          },
          child: Image.asset(
            'images/linkedin.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            html.window.open(
                'https://www.facebook.com/AbdelouahedMedjoudja', 'Facebook');
          },
          child: Image.asset(
            'images/facebook.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            html.window.open('https://twitter.com/MedAbdelouahed', 'Twitter');
          },
          child: Image.asset(
            'images/twitter.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
      ],
    );
  }
}
