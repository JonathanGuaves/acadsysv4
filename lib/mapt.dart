import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class MakeAppt extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => InitState();
}

List<DropdownMenuItem<String>> get dropdownItems
{
  List<DropdownMenuItem<String>> menuItems =
  [
    DropdownMenuItem(child: Text("Urgent"), value: "Urgent"),
    DropdownMenuItem(child: Text("Meeting"), value: "Meeting"),
    DropdownMenuItem(child: Text("Report"), value: "Report"),
    DropdownMenuItem(child: Text("Advising"), value: "Advising"),
  ];

  return menuItems;
}
/*
class _DropDownItemState extends State<DropdownItem>
{
  String selectvalue = "Type";
  @override
  Widget build(BuildContext context)
  {
    return DropdownButton
      (
        value: selectvalue,
        items: dropdownItems
      );
  }
}
*/

class InitState extends State<MakeAppt>
{
  @override

  String getday = DateFormat("EEE").format(DateTime.now());
  String getdate = DateFormat("MMM, dd, yyyy").format(DateTime.now());

  String aptdate = "";

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

                      child: Image.asset("images/logo2.png"),
                      height: 60,
                      width: 60,
                    ),

                  Container
                    (
                      margin: EdgeInsets.only(left: 25, top: 35),
                      alignment: Alignment.topLeft,

                      child: Text
                        (
                          "Make an Appointment",

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

                      decoration: BoxDecoration
                      (
                        color: Colors.red
                      )
                    ),

                  Container
                    (
                      margin: EdgeInsets.only(left: 25,top: 75),
                      alignment: Alignment.topLeft,

                      child: Text
                        (
                          "Today: " + getday + ", " + getdate,

                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              fontSize: 17,
                              color: Colors.black
                            ),
                        ),
                    ),

                  Container
                    (
                      margin: EdgeInsets.only(left: 25, top: 170),
                      alignment: Alignment.centerLeft,

                      child: Text
                        (
                          "Type: " ,

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

                    ),

                  Container
                    (
                      margin: EdgeInsets.only(left: 25, top: 270),
                      alignment: Alignment.centerLeft,

                      child: Text
                        (
                          "Date: ",

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
                      margin: EdgeInsets.only(top: 260, left: 15),
                      alignment: Alignment.center,
                      height: 50,

                      child: CupertinoDatePicker
                        (
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime newDateTime)
                          {
                            // aptdate = ;
                          },
                        ),
                    ),

                  /*
                  Container
                    (
                      margin: EdgeInsets.only(left: 25, top: 390),
                      alignment: Alignment.centerLeft,

                      child: Text
                        (
                          "Remarks: ",

                          style: TextStyle
                            (
                              fontFamily: 'SanFrancisco',
                              fontSize: 23,
                              color: Colors.black
                            ),
                        ),
                    ),
                   */

                    Container
                      (
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 25, top: 350),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),

                        height: 150,

                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(25)
                        ),

                        child: TextField
                          (
                            style: TextStyle
                              (
                                backgroundColor: Colors.white,
                                fontSize: 20
                              ),

                            decoration: InputDecoration
                              (
                                hintText: "Remarks",

                                border: OutlineInputBorder(),
                                // enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none
                              ),
                          ),
                      ),

                  Container
                    (
                    margin: EdgeInsets.only(left: 20, right: 20, top: 600),
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
                      "Set Appointment",
                      style: TextStyle
                        (
                          fontFamily: 'SanFrancisco',
                          fontSize: 23,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
          )
      );


    }
}