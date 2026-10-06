import 'package:flutter/material.dart';
import '../models/notification_model.dart';

class NotificationProvider extends ChangeNotifier {
  final List<NotificationModel> _notifications = [];

  List<NotificationModel> get notifications => List.unmodifiable(_notifications);

  void setNotifications(List<NotificationModel> notifications) {
    _notifications.clear();
    _notifications.addAll(notifications);
    notifyListeners();
  }
}
