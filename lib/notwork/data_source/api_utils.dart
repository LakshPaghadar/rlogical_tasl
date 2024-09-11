import 'package:dio/dio.dart';
import 'package:dummy_api_call_retrofit/locator/locator.dart';
import 'package:retrofit/retrofit.dart';
part 'api_utils.g.dart';

@RestApi()
abstract class PostApi {
  factory PostApi(Dio dio) = _PostApi;

}

PostApi postApi = locator<PostApi>();
