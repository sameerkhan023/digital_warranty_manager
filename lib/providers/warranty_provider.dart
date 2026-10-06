import 'package:flutter/material.dart';
import '../models/warranty_model.dart';

class WarrantyProvider extends ChangeNotifier {
  final List<WarrantyModel> _warranties = [];

  List<WarrantyModel> get warranties => List.unmodifiable(_warranties);

  void setWarranties(List<WarrantyModel> warranties) {
    _warranties.clear();
    _warranties.addAll(warranties);
    notifyListeners();
  }

  void addWarranty(WarrantyModel warranty) {
    _warranties.add(warranty);
    notifyListeners();
  }
}
