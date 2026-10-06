import '../models/warranty_model.dart';

class WarrantyUtils {
  WarrantyUtils._();

  static String getStatusLabel(WarrantyModel warranty) {
    if (warranty.isExpired) {
      return 'Expired';
    } else if (warranty.daysRemaining <= 30) {
      return 'Expiring Soon';
    } else {
      return 'Active';
    }
  }
}
