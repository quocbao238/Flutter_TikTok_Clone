import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


// Widget Video là widget con của middleSection widget
class Video_Description extends StatelessWidget {

    // VideoPlayerController _controller = VideoPlayerController.network(
    //     'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
    //   ..initialize().then((_) {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: 
      Container(
        height: 100.0,
        padding: EdgeInsets.only(left: 20.0,bottom: 10.0),  
       child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Text('@Baobon',style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Video tittle and some other stuff'),
          Row(children:[
            Icon(Icons.music_note,size: 25.0,color: Colors.white,),
            Text('Artist name - Album name - song',style: TextStyle(fontSize: 14.0),)
          ],)
      ],
    )));
  }
}


