import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProjectsBox extends StatelessWidget {
  const ProjectsBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.only(top: defaultPadding*2, left: defaultPadding*2, right: defaultPadding*2),
        height: size.height*0.84,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          children: [
            ProjectsHeader(size: size),
            SizedBox(height: defaultPadding*2),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                children: [
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                  ProjectCard(),
                ]
              ),
            )
          ],
        ),
      )
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Color.fromRGBO(254,228,203, 1.0),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'December 10, 2020',
                style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(
                              color: Colors.grey
                            ),
              ),
              Icon(Icons.more_vert_rounded)
            ],
          ),
          Column(
            children: [
              Text(
                'Web Designing', 
                style: Theme.of(context)
                            .textTheme
                            .bodyText1,
              ),
              Text('Prototyping'),
            ],
          ),
          ProgressLine(),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 10.0,
                      child: Text('F'),
                    ),
                    Positioned(
                      left: 12.0,
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.black,
                        child: Text('E')
                      )
                    ),
                    Positioned(
                      left: 24.0,
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.black,
                        child: Text('P')
                      )
                    ),
                  ]
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(254,148,46, 0.1),
                radius: 10.0,
                child: Text('+', style: TextStyle(color: Color.fromRGBO(254,148,46, 1.0)),)
              ),
              Spacer(),
              Chip(
                backgroundColor: Color.fromRGBO(254,148,46, 0.1),
                label: Text(
                  '2 Days Left',
                  style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(
                                color: Color.fromRGBO(254,148,46, 1.0),
                                fontSize: 12
                              ),
                )
              )
            ],
          )
        ],
      )
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Progress',
              style: Theme.of(context)
                          .textTheme
                          .bodyText1,
            ),
            Spacer()
          ],
        ),
        SizedBox(height: 10,),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            LayoutBuilder(builder: (context, constraints) => 
              Container(
                width: constraints.maxWidth * 0.5,
                height: 5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(254,148,46, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Spacer(),
            Text(
              '60%',
              style: Theme.of(context)
                          .textTheme
                          .bodyText1,
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectsHeader extends StatelessWidget {
  const ProjectsHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProjects(context),
            SizedBox(height: defaultPadding*2),
            buildProgress(context)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildDate(context),
            SizedBox(height: defaultPadding*2),
            buildButtons()
          ]
        )
      ]
    );
  }

  Text buildProjects(BuildContext context) {
    return Text(
                  'Projects',
                  style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                                fontSize: 28
                              ),
                );
  }

  Row buildProgress(BuildContext context) {
    return Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '45',
                          style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 28
                                      ),
                        ),
                        Text(
                          'In Progress',
                          style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 18,
                                        color: Colors.grey.shade700
                                      ),
                        )
                      ]
                    ),
                    SizedBox(width: defaultPadding*2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '24',
                          style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 28
                                      ),
                        ),
                        Text(
                          'Upcoming',
                          style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 18,
                                        color: Colors.grey.shade700
                                      ),
                        )
                      ]
                    ),
                    SizedBox(width: defaultPadding*2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '62',
                          style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontSize: 28
                                      ),
                        ),
                        Text(
                          'Total Projects',
                          style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 18,
                                        color: Colors.grey.shade700,
                                      ),
                        )
                      ]
                    ),
                  ],
                );
  }

  Row buildButtons() {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.list_rounded)
          ),
          style: TextButton.styleFrom(
            primary: Colors.black
          ),
        ),
        SizedBox(width: 5,),
        TextButton(
          onPressed: () {},
          child: Container(
            height: 50,
            width: 50,
            child: Icon(Icons.grid_view,)
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.black
          ),
        )
      ],
    );
  }

  Text buildDate(BuildContext context) {
    return Text(
                  'December, 12',
                  style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                                fontSize: 20
                              ),
                );
  }
}