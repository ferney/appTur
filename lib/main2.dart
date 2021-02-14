import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'h_r/hotel_restaurante.dart';
import 'package:video_player/video_player.dart';
import 'mogotes/mogotes.dart';
//import 'sanjoaquin/sanjoaquin.dart';
//import 'onzaga/onzaga.dart';

void main() => runApp(BackgroundVideo());

class BackgroundVideo extends StatefulWidget {
  @override
  _BackgroundVideoState createState() => _BackgroundVideoState();
}

class _BackgroundVideoState extends State<BackgroundVideo> {
  //  4: Create a VideoPlayerController object.
  VideoPlayerController _controller;

  //  5: Override the initState() method and setup your VideoPlayerController
  @override
  void initState() {
    super.initState();

    // Pointing the video controller to our local asset.
    _controller = VideoPlayerController.asset("assets/coffee.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
        // Adjusted theme colors to match logo.
        primaryColor: Color(0xffb55e28),
        accentColor: Color(0xffffd544),
      ),
      home: SafeArea(
        child: Scaffold(
          //  6: Create a Stack Widget
          body: Stack(
            children: <Widget>[
              //  7: Add a SizedBox to contain our video.
              SizedBox.expand(
                child: FittedBox(
                  // If your background video doesn't look right, try changing the BoxFit property.
                  // BoxFit.fill created the look I was going for.
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
              LoginWidget()
            ],
          ),
        ),
      ),
    );
  }

  //  8: Override the dipose() method to cleanup the video controller.
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

// A basic login widget with a logo and a form with rounded corners.
class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          child: Center(
              /*child: Image(
              image: AssetImage("assets/coffee_logo.png"),
              width: 100.0,
            ),*/
              ),
        ),
        SizedBox(
          height: 250.0,
        ),
        Container(
          padding: EdgeInsets.all(16),
          width: 300,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ButtonTheme(
                minWidth: 200.0,
                child: RaisedButton(
                  color: Colors.white10,
                  child: Text(
                    'Mogotes',
                    style: TextStyle(color: Color(0xffffd544), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mogotes(),
                    ));
                  },
                ),
              ),
              /*ButtonTheme(
                minWidth: 200.0,
                child: RaisedButton(
                  //color: Color(0xffb55e28),
                  color: Colors.white10,
                  child: Text(
                    'San Joaquin',
                    style: TextStyle(color: Color(0xffffd544), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mogotes(),
                      //builder: (context) => SanJoaquin(),
                    ));
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                child: RaisedButton(
                  //color: Color(0xffb55e28),
                  color: Colors.white10,
                  child: Text(
                    'Onzaga',
                    style: TextStyle(color: Color(0xffffd544), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Mogotes(),
                      //builder: (context) => Onzaga(),
                    ));
                  },
                ),
              ),*/
              //-----

              //-----
              ButtonTheme(
                minWidth: 200.0,
                child: RaisedButton(
                  //color: Color(0xffb55e28),
                  color: Colors.white10,
                  child: Text(
                    'Directorio',
                    style: TextStyle(color: Color(0xffffd544), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TabsTotal(),
                      //builder: (context) => Onzaga(),
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
