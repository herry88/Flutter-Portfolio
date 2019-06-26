import 'package:flutter_web/material.dart';
import 'package:portfolio/data/projects.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/flutter_swiper.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;

class ProjectItem extends StatefulWidget {
  final Project project;

  const ProjectItem({Key key, this.project}) : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState(project);
}

class _ProjectItemState extends State<ProjectItem> {
  final Project project;

  _ProjectItemState(this.project);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _largeScreen(context),
      smallScreen: _smallScreen(context),
    );
  }

  Widget _largeScreen(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 5, vertical: 50),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 300,
                    height: 500,
                    child: Swiper(
                      itemCount: project.images.length,
                      itemWidth: 250,
                      viewportFraction: .85,
                      scale: .9,
                      itemBuilder: (context, index) =>
                          Image.asset(project.images[index]),
                    )),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            project.title,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            project.description,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                              spacing: 10,
                              children: project.tags
                                  .map(
                                    (tag) => Chip(
                                          backgroundColor: AppColors.redAccent,
                                          label: Text(
                                            tag,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                  )
                                  .toList())
                        ],
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      OutlineButton(
                        onPressed: () {
                          html.window.open(project.link, project.title);
                        },
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        borderSide:
                            BorderSide(color: AppColors.redAccent, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        child: Text(
                          'PREVIEW',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: AppColors.redAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 1,
              color: Colors.grey.withAlpha(80),
            )
          ],
        ));
  }

  Widget _smallScreen(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                  height: 500,
                  child: Swiper(
                    itemCount: project.images.length,
                    itemWidth: 250,
                    viewportFraction: .85,
                    scale: .9,
                    itemBuilder: (context, index) =>
                        Image.asset(project.images[index]),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                project.title,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                project.description,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                  spacing: 10,
                  children: project.tags
                      .map(
                        (tag) => Chip(
                              backgroundColor: AppColors.redAccent,
                              label: Text(
                                tag,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                      )
                      .toList()),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                color: Colors.grey.withAlpha(80),
              ),
            ],
          )),
    );
  }
}
