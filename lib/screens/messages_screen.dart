import 'package:flutter/material.dart';
import '../models/notification.dart';
import '../widgets/notification_tile.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final List<AppNotification> _notifications = List.generate(
    7,
    (index) => AppNotification(
      sender: 'Ralph Edwards',
      message: 'Completed',
      timeAgo: '5 min ago',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  'Mark All as read',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          return NotificationTile(notification: _notifications[index]);
        },
      ),
    );
  }
}
