import 'package:assignment_app/repositories/service_repository.dart';
import 'package:assignment_app/models/service.dart';

class ServiceViewModel {
  final ServiceRepository _repository;

  ServiceViewModel(this._repository);

  Future<List<Service>> fetchServices() async {
    final docs = await _repository.fetchServices();
    return docs.map((doc) => Service.fromMap(doc.data())).toList();
  }
}
