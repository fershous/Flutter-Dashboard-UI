import 'package:flutter/material.dart';

import '../../../../constants.dart';



class ClientMessages extends StatelessWidget {
  const ClientMessages({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.only(
          top: defaultPadding*2,
        ),
        height: size.height*0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MessagesHeader(),
            Divider(
              color: Colors.grey,
              thickness: 0.2,
            ),
            MessagesList()
          ]
        ),
      )
    );
  }
}

class MessagesHeader extends StatelessWidget {
  const MessagesHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        bottom: defaultPadding
      ),
      child: Text(
        'Client Messages',
        style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(
                      fontSize: 28
                    ),
      ),
    );
  }
}

class MessagesList extends StatelessWidget {
  const MessagesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ListView(
          children: [
            MessageBox(),
            MessageBox(),
            MessageBox(),
            MessageBox(),
            MessageBox(),
          ]
        ),
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Text('S')),
                SizedBox(width: defaultPadding),
                buildMessage(context),
                Icon(Icons.star_border_rounded),
              ],
            ),
          ),
          buildDate(),
          Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
        ],
      ),
    );
  }

  Align buildDate() {
    return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: defaultPadding,
              bottom: defaultPadding
            ),
            child: Text('Dec, 12')
          )
        );
  }

  Expanded buildMessage(BuildContext context) {
    return Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stephanie',
                      style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 16
                                  ),
                    ),
                    SizedBox(height: defaultPadding),
                    Container(
                      child: Text(
                        'I got your first assignment. It was quite good. We can continue with the next assignment.'
                      )
                    )
                  ],
                ),
              );
  }
}
