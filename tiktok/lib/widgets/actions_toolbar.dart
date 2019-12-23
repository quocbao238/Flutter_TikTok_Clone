import 'package:flutter/material.dart';
import 'package:tiktok/tik_tok_icons.dart';

// Widget bên phải la widget con cua middleSection
class ActionToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      // color: Colors.red[200],
      child: Column(
          mainAxisSize:
              MainAxisSize.min, // Can chia khoang cach , dua khoang cach ve min
          children: [
            _getFollowAction(),
            _getSocialAction(icon: TikTokIcons.heart, tittle: '3.7m'),
            _getSocialAction(icon: TikTokIcons.chat_bubble, tittle: '12.2k'),
            _getSocialAction(icon: Icons.share, tittle: 'Share', isShare: true),
            // _getMusicPlayerActionVer2(),
            _getMusicPlayerAction()
            // get(),
          ]),
    );
  }
}

Widget _getSocialAction({String tittle, IconData icon, bool isShare = false}) {
  return Container(
    width: 60.0,
    height: 60.0,
    margin: EdgeInsets.only(top: 20.0),
    child: Column(
      children: [
        Icon(
          icon,
          size: isShare ? 25.0 : 35.0,
          color: Colors.grey[300],
        ),
        Padding(
          padding: EdgeInsets.only(top: isShare ? 5.0 : 2.0),
          child: Text(
            tittle,
            style: TextStyle(fontSize: 12.0),
          ),
        )
      ],
    ),
  );
}

Widget _getFollowAction() {
  return Container(
    width: 60.0,
    height: 60.0,
    child: Stack(
      children: [
        _getProfilePicture(),
        _getPlusIcon(),
      ],
    ),
  );
}

Widget _getProfilePicture() {
  return Positioned(
    left: (60.0 / 2) - (50.0 / 2),
    child: Container(
      height: 50.0,
      width: 50.0,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0 / 2),
      ),
      child: Image.network(
          'http://icons.iconarchive.com/icons/diversity-avatars/avatars/256/batman-icon.png'),
    ),
  );
}

Widget _getPlusIcon() {
  return Positioned(
    left: (60.0 / 2) - (20.0 / 2),
    bottom: 0,
    child: Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        )),
  );
}

LinearGradient get musicGradient => LinearGradient(colors: [
      Colors.grey[800],
      Colors.grey[900],
      Colors.grey[800],
      Colors.grey[900],
    ], stops: [
      0.0,
      0.4,
      0.6,
      1.0
    ], begin: Alignment.bottomLeft, end: Alignment.topRight);

Widget _getMusicPlayerAction() {
  return Container(
    margin: EdgeInsets.only(bottom: 20.0,top: 10.0),
    width: 70.0,
    height: 70.0,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(11.0),
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            gradient: musicGradient,
            borderRadius: BorderRadius.circular(70 / 2),
          ),
          child: Image.network(
              "http://icons.iconarchive.com/icons/diversity-avatars/avatars/256/batman-icon.png"),
        ),
      ],
    ),
  );
}
