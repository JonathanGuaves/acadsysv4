import 'package:flutter/material.dart';
// import 'package:aasv4/home_screen.dart';
// import 'package:table_calendar/table_calendar.dart';


class AdvSched extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<AdvSched>
{
  @override
  Widget build(BuildContext context)
  {
    return initWidget();
  }

  // Calendar


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
                        /*
                        TableCalendar
                          (
                            firstday: DateTime.utc(2022, 01, 01),
                            focusedDay: DateTime.now()
                          );
                         */
                      )
                  ],
                ),
            ),
        );
  }
}