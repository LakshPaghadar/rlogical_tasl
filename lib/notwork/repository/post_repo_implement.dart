import 'package:dummy_api_call_retrofit/locator/locator.dart';
import '../api_client.dart';
import '../api_endpoint/api_endpoint.dart';

class PostRepositoryImpl {

  Future getBookingData() async {
    final response = await client.get(ApiEndPoints.calenderData);
    return response;
  }
}

PostRepositoryImpl postRepositoryImpl = locator<PostRepositoryImpl>();
