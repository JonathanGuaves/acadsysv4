import 'dart:async';
import 'package:aasv4/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen>
{
  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async
  {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute()
  {
      Navigator.pushReplacement
        (context, MaterialPageRoute
          (builder: (context) => LoginScreen())
        );
  }

  @override
  Widget build(BuildContext context)
  {
    return initWidget();
  }

  Widget initWidget()
  {
    return Scaffold
      (
        body: Stack
          (
            children:
            [
              Container
                (
                  decoration: BoxDecoration
                    (
                      color: new Color(0xFFFF0000),
                      gradient: LinearGradient
                        (
                          colors: [(new Color(0xFFFF0000)), (new Color(0xFFFFFF))],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                    ),
                ),

                Center
                  (
                    child: Container
                      (
                        margin: EdgeInsets.only(bottom: 200),
                        child: Image.asset
                          ("images/logo2.png",
                            height: 200,
                            width: 200,
                          ),
                      )
                  ),

              Container
                (
                  margin: EdgeInsets.only(bottom: 275),
                  alignment: Alignment.bottomCenter,
                  child: Text
                    (
                    "Academic Advising System",
                    style: TextStyle
                      (
                        fontFamily: 'SanFrancisco',
                        fontSize: 25,
                        color: Colors.black
                    ),
                  )
              )
            ],
          )
      );
  }
}