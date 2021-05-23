import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/responsive.dart';
import 'package:flutter_dashboard_ui/views/main/dashboard/dasboard_view.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  _onSelected(int index) => 
    setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
            Expanded(
              // Default flex 1
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerHeader(child: Text('P')),
                    SizedBox(height: 10),
                    buildDrawerContainer(_selectedIndex, 0, Icons.home_outlined),
                    buildDrawerContainer(_selectedIndex, 1, Icons.bar_chart_rounded),
                    buildDrawerContainer(_selectedIndex, 2, Icons.home_repair_service_outlined),
                    buildDrawerContainer(_selectedIndex, 3, Icons.settings_outlined),
                  ],
                ),
              )
            ),
            Expanded(
              // Take 10/11 part of the screen
              flex: 10,
              child: DashboardView()
            )
          ],
        )
      ),
    );
  }

  Widget buildDrawerContainer(int _selectedIndex, int index, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(top:20),
      child: InkWell(
        onTap: () {
          _onSelected(index);
        },
        customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: _selectedIndex == index ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(100.0)),
          child: Icon(
            icon,
            color: _selectedIndex == index ? Colors.white : Colors.black,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
