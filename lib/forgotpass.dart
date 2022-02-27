import 'package:flutter/material.dart';
import 'package:aasv4/home_screen.dart';

class ForgotPass extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ForgotPass>
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
            child: Column
              (
                children:
                [
                  Container
                    (

                    )
                ],
              )
          )
      );
  }
}