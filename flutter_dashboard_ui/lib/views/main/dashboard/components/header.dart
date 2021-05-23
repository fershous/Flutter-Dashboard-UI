import 'package:flutter/material.dart';
import 'package:flutter_dashboard_ui/responsive.dart';

import '../../../../constants.dart';


class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Portfolio', 
          style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.0
                      ),),
        SizedBox(width: 40),
        Expanded(
          child: SearchField()
        ),
        Spacer( flex: 1),
        if (!Responsive.isMobile(context)) 
          LeftActions()
      ],
    );
  }
}

class LeftActions extends StatelessWidget {
  const LeftActions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.nights_stay_outlined),
          iconSize: 28,
          onPressed: () {},
          hoverColor: Colors.transparent,
          splashRadius: 0.1,
        ),
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications_none_outlined),
          iconSize: 28,
          onPressed: () {},
          hoverColor: Colors.transparent,
          splashRadius: 0.1,
        ),
        InkWell(
          onTap: () {}, 
          child: Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.grey,width: 2.0))
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('F', style: TextStyle(color: Colors.white),),
                ),
                SizedBox(width: 5.0,),
                Text(
                  'Fernando C.', 
                  style: Theme.of(context).textTheme.headline6,)
              ]
            ),
          )
        )
      ]
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0,2),
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30))
          )
        ),
      ),
    );
  }
}