import 'package:instagramultra/core/network/api_end_pont.dart';
import 'package:instagramultra/core/network/dio_service.dart';

Future<void> getMyId() async {
  var dio = DioService();
  var url = Apiendoint.story(StoryEndpoint.GET_MY_STORIES);
  var response = await dio.get(url: url);
  if (response.statusCode == 200) {
    myId = response.data['data']['userId'] ?? '';
  } else {
    myId = '';
  }
}

String myId = '';
