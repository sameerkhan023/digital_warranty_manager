import '../models/receipt_model.dart';

class ReceiptService {
  final List<ReceiptModel> _receipts = [];

  Future<List<ReceiptModel>> getReceipts() async {
    return List.from(_receipts);
  }

  Future<void> addReceipt(ReceiptModel receipt) async {
    _receipts.add(receipt);
  }
}
