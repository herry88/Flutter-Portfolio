import 'package:flutter_web/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;

class Header extends StatelessWidget {
  final String _title = 'Mobile and Web Developer.';
  final String _description =
      'Abdelouahed Medjoudja mobile and web developer has around 4 years working on many projects with different techniques (Java, Kotlin,Php, Flutter, Laravel...), Programming is Love 😍.';
  final String _need_project = 'I need to create project';
  final String _looking_to_hire = "I'm looking to hire";

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return ResponsiveWidget.isLargeScreen(context)
        ? Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('images/cover.jpg'),
                alignment: Alignment.topLeft,
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: AppColors.blackTransparent,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 5,
                  vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: <Color>[
                                  AppColors.redAccent,
                                  Colors.red[400]
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            shape: BoxShape.circle),
                        child: Text('AM',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                      Row(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            splashColor: AppColors.redAccent,
                            highlightedBorderColor: AppColors.redAccent,
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            child: Text(
                              "HOME",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "PROJECTS",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "CONTACT",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    _title,
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _description,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: 1.1,
                      wordSpacing: 1.1,
                      height: 1.7,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          html.window.open(
                              'https://www.linkedin.com/in/abdelouahed-medjoudja/',
                              'Linkedin');
                        },
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        color: AppColors.redAccent,
                        child: Text(
                          _need_project,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        color: Colors.grey[700],
                        child: Text(
                          _looking_to_hire,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : null;
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
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blackTransparent,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: <Color>[AppColors.redAccent, Colors.red[400]],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      shape: BoxShape.circle),
                  child: Text('AM',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                /*Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: .5,
                          ),
                        ),
                        child: Text(
                          "HOME",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "PROJECTS",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "CONTACT",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )*/
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              _title,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              _description,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                letterSpacing: 1.1,
                wordSpacing: 1.1,
                height: 1.7,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: AppColors.redAccent,
              child: Text(
                _need_project,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.grey[700],
              child: Text(
                _looking_to_hire,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
