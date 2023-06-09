import 'package:flutter/material.dart';
import 'package:shift/src/functions/font.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();
    
    return Scaffold(
      body: Scrollbar(
          controller: scrollController,
          thickness: 10,
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 80,
                width: 80,
                color: MyFont.primaryColor,
              );
            },
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            controller: scrollController,
          )
        ),
    );
  }
}
