import '../domain/service/network_service.dart';
import '../model/post_model.dart';

class PostScreenController {
  factory PostScreenController() {
    return PostScreenController._();
  }

  PostScreenController._();

  final _postUrl = '/posts';
  final NetworkService _networkService = NetworkService();

  final List<PostModel> _dataList = [];

  List<PostModel> get data => _dataList;

  Future fetchPosts() async {
    _dataList.clear()
;    final data = await _networkService.get(uri: _postUrl);

    print(data.runtimeType);

    for (var i in data) {
      _dataList.add(PostModel.fromJson(i));
    }

    print(_dataList.runtimeType);
    print(_dataList.length);
    print(data.length);
  }
}
