import 'package:news_app/data/data_source/remote/api_client.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data_source/remote/api_endpoint_url.dart';

class TagsRepo extends ApiClient {
  TagsRepo();
  getallTags() async {
    try {
      final response = await getRequest(path: ApiEndpointUrls.tags);
      if (response.statusCode == 200) {
        Vx.log(response.data);
      }
    } on Exception catch (e) {
      Vx.log(e);
    }
  }
}
