import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget
{
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: appBar(),
        body: listView(),
        // body: listViewItem(index)
      );
  }

  PreferredSizeWidget appBar()
  {
    return AppBar
      (
        title: Text('Notifications'),

        backgroundColor: Colors.red,
      );
  }

  Widget listView()
  {
    return ListView.separated
      (
        itemBuilder: (context, index)
        {
          return listViewItem(index);
        },
        separatorBuilder: (context, index)
        {
          return Divider(height: 1);
        },
        itemCount: 15
    );

  }

  Widget listViewItem(int index)
  {
    return Container
      (
        margin: EdgeInsets.only(left:10),
        child: Row
          (
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              NotifIcon(),

              Expanded
                (
                  child: Container
                    (
                      margin: EdgeInsets.only(left: 10),

                      child: Column
                        (
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children:
                          [
                            message(index),
                            DateTime(index)
                          ],
                        ),
                    ),
                ),

            ],
          ),
      );
  }

  Widget NotifIcon()
  {
    return Container
      (
        height: 50,
        width: 50,
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration
          (
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),

        child: Icon
          (
            Icons.notifications,
            size: 25,
            color: Colors.redAccent,
          ),
      );
  }

  Widget message(int index)
  {
    return Container
      (
        child: RichText
          (
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan
              (
                text: 'Title',
                style: TextStyle
                  (
                    fontFamily: 'SanFrancisco',
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),

              children:
                [
                   TextSpan
                      (
                        text: 'Message',
                        style: TextStyle
                          (
                            fontWeight: FontWeight.w400,
                          )
                      )
                ]
              ),
          ),
      );
  }

  Widget DateTime(int index)
  {
    return Container
      (
        margin: EdgeInsets.only(top: 5),
        child: Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children:
            [
              Text
                (
                  '22-02-2022',
                  style: TextStyle
                    (
                      fontSize: 10,
                    ),
                ),

              Text
                (
                '4:20 AM',
                style: TextStyle
                  (
                  fontSize: 10,
                ),
              ),
            ],
          ),
      );
  }
}