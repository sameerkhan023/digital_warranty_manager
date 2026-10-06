import '../models/service_center_model.dart';

class ServiceCenterService {
  final List<ServiceCenterModel> _serviceCenters = [];

  Future<List<ServiceCenterModel>> getServiceCenters() async {
    return List.from(_serviceCenters);
  }
}
