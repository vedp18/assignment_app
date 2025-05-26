import 'package:assignment_app/view_models/service_view_model.dart';
import 'package:flutter/material.dart';
import 'package:assignment_app/models/service.dart';
import 'package:assignment_app/repositories/service_repository.dart';

class MusicServicesProvider extends ChangeNotifier {
  final _viewModel = ServiceViewModel(ServiceRepository());

  List<Service> _services = [];
  List<Service> get services => _services;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> loadServices() async {
    _isLoading = true;
    notifyListeners();

    _services = await _viewModel.fetchServices();

    _isLoading = false;
    notifyListeners();
  }
}
