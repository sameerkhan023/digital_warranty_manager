import '../models/notification_model.dart';

class NotificationService {
  final List<NotificationModel> _notifications = [];

  Future<List<NotificationModel>> getNotifications() async {
    return List.from(_notifications);
  }

  Future<void> markAsRead(String notificationId) async {
    final index = _notifications.indexWhere((n) => n.id == notificationId);
    if (index != -1) {
      final old = _notifications[index];
      _notifications[index] = NotificationModel(
        id: old.id,
        title: old.title,
        message: old.message,
        timestamp: old.timestamp,
        isRead: true,
        warrantyId: old.warrantyId,
      );
    }
  }
}
