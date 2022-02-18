import 'package:flutter/material.dart';
import 'package:aasv4/home_screen.dart';

class LoginScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return initWidget();
  }

  /*
  homescreenroute()
  {
    Navigator.pushReplacement
      (
        context, MaterialPageRoute
        (
          builder: (context) => HomeScreen()
        )
      );
  }
  */

  Widget initWidget()
  {
    return Scaffold
      (
        backgroundColor: Colors.grey,
        body: SingleChildScrollView
          (
            child: Column
              (
                children:
                [
                  Container
                    (
                      height: 300,
                      decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                          color: Color(0xFFFF0000),
                          gradient: LinearGradient
                            (
                              colors: [(new Color(0xff989898)), (new Color(0xFFFF0000))],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                            )
                        ),

                        child: Center
                          (
                            child: Column
                              (
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                [
                                  Container
                                    (
                                      margin: EdgeInsets.only(top: 40),
                                      child: Image.asset("images/logo3.png"),
                                      height: 140,
                                      width: 300
                                    ),

                                  Container
                                    (
                                      margin: EdgeInsets.only(right: 30, top: 20),
                                      alignment: Alignment.bottomRight,
                                      child: Text
                                        (
                                          "Login",
                                          style: TextStyle
                                            (
                                              fontFamily: 'SanFrancisco',
                                              fontSize: 23,
                                              color: Colors.white
                                            ),
                                        )
                                    )

                                ],
                              ),
                          ),
                    ),

                    Container
                      (
                        margin: EdgeInsets.only(left: 30, right: 20, top: 70),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration
                          (
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[200],
                            boxShadow:
                            [
                              BoxShadow
                                (
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Color(0xffEEEEEE)
                                )
                            ]
                          ),

                        alignment: Alignment.center,
                        child: TextField
                          (
                            cursorColor: Color(0xffF5591F),
                            decoration: InputDecoration
                              (
                                icon: Icon
                                  (
                                    Icons.email,
                                    color: Color(0xFFFF0000),
                                  ),

                                  hintText: "Username",
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                              )
                          ),
                      ),

                  Container
                    (
                    margin: EdgeInsets.only(left: 30, right: 20, top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                        boxShadow:
                        [
                          BoxShadow
                            (
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)
                          )
                        ]
                    ),

                    alignment: Alignment.center,
                    child: TextField
                      (
                        obscureText: true,
                        cursorColor: Color(0xffF5591F),
                        decoration: InputDecoration
                          (
                          icon: Icon
                            (
                            Icons.vpn_key,
                            color: Color(0xFFFF0000),
                          ),

                          hintText: "Password",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        )
                    ),
                  ),

                  Container
                    (
                      margin: EdgeInsets.only(top: 20, right: 20),
                      alignment: Alignment.centerRight,
                      child: GestureDetector
                        (
                          child: Text("Forgot Password?"),
                          onTap: () => {},
                        ),
                    ),

                  // Forgot Password
                  GestureDetector
                    (
                      onTap: () =>
                      {
                        Navigator.pushReplacement
                          (
                            context, MaterialPageRoute
                            (
                              builder: (context) => HomeScreen()
                            )
                          )
                      },

                      child: Container
                        (
                          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.center,

                          height: 54,
                          decoration: BoxDecoration
                            (
                              color: new Color(0xFFFF0000),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow:
                                [
                                  BoxShadow
                                  (
                                     offset: Offset(0, 10),
                                     blurRadius: 50,
                                     color: Color(0xffEEEEEE)
                                  )
                                ]
                            ),

                            child: Text
                              (
                                "LOGIN",
                                style: TextStyle
                                  (
                                    fontFamily: 'SanFrancisco',
                                    color: Colors.white
                                  ),
                              ),
                        ),
                    )
                ],
              ),
          ),
      );
  }
}

