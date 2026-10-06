class AppDateUtils {
  AppDateUtils._();

  static String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  static bool isExpiringSoon(DateTime expiryDate, {int daysThreshold = 30}) {
    final now = DateTime.now();
    final difference = expiryDate.difference(now).inDays;
    return difference >= 0 && difference <= daysThreshold;
  }
}
