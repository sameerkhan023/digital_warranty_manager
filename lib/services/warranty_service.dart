import '../models/warranty_model.dart';

class WarrantyService {
  final List<WarrantyModel> _warranties = [];

  Future<List<WarrantyModel>> getWarranties() async {
    return List.from(_warranties);
  }

  Future<void> addWarranty(WarrantyModel warranty) async {
    _warranties.add(warranty);
  }

  Future<void> updateWarranty(WarrantyModel warranty) async {
    final index = _warranties.indexWhere((w) => w.id == warranty.id);
    if (index != -1) {
      _warranties[index] = warranty;
    }
  }

  Future<void> deleteWarranty(String id) async {
    _warranties.removeWhere((w) => w.id == id);
  }
}
