import 'package:mvp_example/core/api/api_constants.dart';

import '../../core/api/api_client.dart';
import '../model/post_model.dart';

class PostScreenController {
  final ApiClient _client;


  factory PostScreenController(ApiClient client) {
    return PostScreenController._(client);
  }

  PostScreenController._(this._client);


  final List<PostModel> _dataList = [];

  List<PostModel> get data => _dataList;

  Future fetchPosts() async {
    _dataList.clear();
    final data = await _client.get(ApiConstants.posts, {});

    print(data.runtimeType);

    for (var i in data) {
      _dataList.add(PostModel.fromJson(i));
    }

    print(_dataList.runtimeType);
    print(_dataList.length);
    print(data.length);
  }
}
