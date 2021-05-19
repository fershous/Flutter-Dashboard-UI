import 'package:flutter/material.dart';

import '../../../constants.dart';

import 'components/client_messages.dart';
import 'components/header.dart';

class DashboardView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding * 2.5),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.all(defaultPadding*2),
                    height: size.height*0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Projects',
                              style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            fontSize: 28
                                          ),
                            ),
                            Row(
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
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'December, 12',
                              style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            fontSize: 20
                                          ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Icon(Icons.list_rounded),
                                  style: TextButton.styleFrom(
                                    primary: Colors.black
                                  ),
                                ),
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
                            )
                          ]
                        )
                      ]
                    ),
                  )
                ),
                SizedBox(width: defaultPadding,),
                ClientMessages(size: size),
              ],
            )
          ],
        ),
      ),
    );
  }
}