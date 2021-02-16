part of 'importProvider.dart';

class Repository {
  final api = Api();

  Future provinsi() => api.provinsi();
}
