import 'package:custom_halal_app/core/utils/size_utils.dart';
import 'package:custom_halal_app/screens/home_screens/search_error_screen.dart';
import 'package:custom_halal_app/theme/text_style_customize.dart';
import 'package:custom_halal_app/widgets/auth/auth_custom_icon_btn_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Color _bgColor = const Color(0XFFE1EFE6);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notificationData = [
      {
        'title': 'Notification 1',
        'subtitle': 'Description of Notification 1',
        'date': DateTime.now()
      },
      {
        'title': 'Notification 2',
        'subtitle': 'Description of Notification 2',
        'date': DateTime.now()
      },
      {
        'title': 'Notification 3',
        'subtitle': 'Description of Notification 3',
        'date': DateTime.now().subtract(Duration(days: 1))
      },
      {
        'title': 'Notification 4',
        'subtitle': 'Description of Notification 4',
        'date': DateTime.now().subtract(Duration(days: 1))
      },
      {
        'title': 'Notification 5',
        'subtitle': 'Description of Notification 5',
        'date': DateTime.now().subtract(Duration(days: 1))
      },
      {
        'title': 'Notification 6',
        'subtitle': 'Description of Notification 6',
        'date': DateTime.now().subtract(Duration(days: 1))
      },
      {
        'title': 'Notification 7',
        'subtitle': 'Description of Notification 7',
        'date': DateTime.now().subtract(Duration(days: 2))
      },
      {
        'title': 'Notification 8',
        'subtitle': 'Description of Notification 8',
        'date': DateTime.now().subtract(Duration(days: 2))
      },
      {
        'title': 'Notification 9',
        'subtitle': 'Description of Notification 9',
        'date': DateTime.now().subtract(Duration(days: 2))
      },

    ];

    Map<DateTime, List<Map<String, dynamic>>> groupedNotifications = {};
    notificationData.forEach((notification) {
      DateTime date = DateTime(notification['date'].year,
          notification['date'].month, notification['date'].day);
      if (!groupedNotifications.containsKey(date)) {
        groupedNotifications[date] = [];
      }
      groupedNotifications[date]!.add(notification);
    });

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: _bgColor,
        body: Stack(children: [
          Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 75.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AuthCustomIconBtnWidget(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchErrorScreen(),),);
                          },
                          child:
                              Image.asset('assets/images/img_arrow_left.png'),
                        ),
                        SizedBox(width: 16.h),
                        Text(
                          'Notification'.tr,
                          style: TextStyleCustomize.titleLargeBlackA600,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: groupedNotifications.length,
                    itemBuilder: (context, index) {
                      DateTime date = groupedNotifications.keys.elementAt(index);
                      List<Map<String, dynamic>> notifications = groupedNotifications[date]!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _formatDate(date),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: notifications.length,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> notification = notifications[index];
                              return Card(
                                margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                                elevation: 2.0,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.notifications, color: Colors.white),
                                    backgroundColor: Colors.green,
                                  ),
                                  title: Text(
                                    notification['title'],
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(notification['subtitle']),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            bottom: 10,
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }

  String _formatDate(DateTime date) {
    DateTime now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today';
    } else if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day - 1) {
      return 'Yesterday';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}
