import 'package:flutter/material.dart';
import 'package:tiktok/widgets/actions_toolbar.dart';
import 'package:tiktok/widgets/bottom_toolbar.dart';
import 'package:tiktok/widgets/video_description.dart';

class Home extends StatelessWidget {
  //Wiget phía trên
  Widget get topSection => Container(
        // alignment: Alignment(0.0,1.0),
        height: 100.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text('Following'),
          Container(
            width: 15.0,
          ),
          Text('For you',
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),),
        ],),
      );

  // Widget giữa
  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Video_Description(),
            ActionToolBar(),
          ],
        ),
      );

  // Widget dưới
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        
      ),
      Column(
        children: <Widget>[
          // Top Section
          topSection,
          //Middle Section
          middleSection,
          //Bottom section
          BottomToolBar(),
        ],
      ),
    );
  }
}
