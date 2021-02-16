part of 'importBloc.dart';

class WilayahBloc {
  final _repository = Repository();
  final _provonsiFatcher = PublishSubject<ProvinsiModel>();

  PublishSubject<ProvinsiModel> get provinsi => _provonsiFatcher.stream;

  getProvinsi() async {
    ProvinsiModel provinsiModel = await _repository.api.provinsi();
    _provonsiFatcher.sink.add(provinsiModel);
  }

  dispose() {
    _provonsiFatcher.close();
  }
}
