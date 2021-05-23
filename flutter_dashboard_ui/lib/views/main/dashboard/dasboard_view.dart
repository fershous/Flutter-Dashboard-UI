import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/responsive.dart';

import '../../../constants.dart';

import 'components/client_messages.dart';
import 'components/header.dart';
import 'components/projects_box.dart';

class DashboardView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding * 2.5),
            Row(
              children: [
                ProjectsBox(),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding,),
                if (!Responsive.isMobile(context))
                  ClientMessages(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
