import 'package:flutter/material.dart';
import 'Presentation/widgets/notification_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: const Color(0xFF699E96).withOpacity(0.5),
      ),
      body: const NotificationBody(),
    );
  }
}
