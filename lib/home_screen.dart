import 'package:aasv4/adv_sched.dart';
import 'package:aasv4/mapt.dart';
import 'package:flutter/material.dart';
import 'package:aasv4/login_screen.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return initWidget();
  }

  Widget initWidget()
  {
      return Scaffold
        (
          backgroundColor: Colors.grey,

          body: SingleChildScrollView
            (
              child: Stack
                (
                  children:
                  [
                    Container
                      (
                         margin: EdgeInsets.only(left: 325, top: 40),
                        // alignment: Alignment.topRight,
                        child: Image.asset("images/logo2.png"),
                        height: 60,
                        width: 60


                      ),

                    Container
                      (
                        margin: EdgeInsets.only(left: 25, top: 55),
                        alignment: Alignment.topLeft,
                        child: Text
                          (
                            "Academic Advising",
                            style: TextStyle
                              (
                                fontFamily: 'SanFrancisco',
                                fontSize: 23,
                                color: Colors.black
                              ),
                          ),
                      ),

                    Container
                      (
                        margin: EdgeInsets.only(top: 110),
                        alignment: Alignment.center,
                        height: 5,
                        // width: ,

                        decoration: BoxDecoration
                          (
                            color: Colors.red
                          ),
                      ),
                    
                      Container
                        (
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,

                          margin: EdgeInsets.only(top: 130, left: 150),

                          decoration: new BoxDecoration
                            (
                              shape: BoxShape.circle,
                              image: new DecorationImage
                                (
                                  fit: BoxFit.fill,
                                  image: new NetworkImage("https://i.imgur.com/BoN9kdC.png")
                                )
                            ),
                        ),

                      Container
                        (
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 240),
                          child: Text
                            (
                              "User Name",
                              style: TextStyle
                                (
                                  fontFamily: 'SanFracisco',
                                  fontSize: 20,
                                  color: Colors.black
                                ),
                            ),
                        ),

                      GestureDetector
                        (
                          onTap: () =>
                          {
                            Navigator.pushReplacement
                              (
                                context, MaterialPageRoute
                              (
                                builder: (context) => AdvSched()
                            )
                            )
                          },

                      child: Container
                        (
                          margin: EdgeInsets.only(top: 290, left: 40),
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),

                          decoration: BoxDecoration
                            (
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),

                          child: Text
                            (
                              "Adviser Schedules",
                              style: TextStyle
                                (
                                  fontFamily: 'SanFrancisco',
                                  color: Colors.white
                                ),
                            ),
                        ),
                        ),

                    GestureDetector
                      (
                      onTap: () =>
                      {

                      },

                      child: Container
                        (
                          // height: 50,
                          //width: 150,

                          margin: EdgeInsets.only(top: 290, left: 230),
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),

                        decoration: BoxDecoration
                          (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          ),

                        child: Text
                          (
                          "View Schedules",
                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),

                    GestureDetector
                      (
                      onTap: () =>
                      {
                        Navigator.pushReplacement
                          (
                            context, MaterialPageRoute
                              (
                                builder: (context) => MakeAppt()
                              )
                          )
                      },

                      child: Container
                        (
                        // height: 50,
                        //width: 150,

                        margin: EdgeInsets.only(top: 390, left: 40),
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),

                        decoration: BoxDecoration
                          (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          ),

                        child: Text
                          (
                          "Make an Appointment",
                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),

                    GestureDetector
                      (
                      onTap: () =>
                      {

                      },

                      child: Container
                        (
                        // height: 50,
                        //width: 150,

                        margin: EdgeInsets.only(top: 390, left: 250),
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),

                        decoration: BoxDecoration
                          (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          ),

                        child: Text
                          (
                          "Notification",
                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),

                    GestureDetector
                      (
                      onTap: () =>
                      {
                        Navigator.pushReplacement
                          (
                            context, MaterialPageRoute
                            (
                              builder: (context) => LoginScreen()
                            )
                          )
                      },

                      child: Container
                        (
                        // height: 50,
                        //  width: 150,

                        // alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 500, left: 170),
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),

                        decoration: BoxDecoration
                          (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Text
                          (
                          "Log out",
                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              fontStyle: FontStyle.normal,
                              color: Colors.red
                          ),
                        ),
                      ),
                    )


                  ],
                ),
            )

        );
  }
}