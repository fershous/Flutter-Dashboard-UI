import 'package:flutter/material.dart';

import '../../../constants.dart';

import 'components/client_messages.dart';
import 'components/header.dart';
import 'components/projects_box.dart';

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
                ProjectsBox(size: size),
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
