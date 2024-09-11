import 'package:dummy_api_call_retrofit/locator/locator.dart';
import 'package:dummy_api_call_retrofit/model/response/booking_data.dart';
import 'package:dummy_api_call_retrofit/notwork/repository/post_repo_implement.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';


part 'post_store.g.dart';

class PostStore = PostStoreBase with _$PostStore;

abstract class PostStoreBase with Store {

  @observable
  BookingData? bookingData ;

  @observable
  String? errorMessage;

  Map<DateTime, bool> availabilityMap = {};
  Map<DateTime, EventSession> dataMap = {};

  Future getBookingData() async {
    try {
      var response = ObservableFuture(postRepositoryImpl.getBookingData());
      final result = await response;
      bookingData=BookingData.fromJson(result);
      saveDates();
    } catch (error, st) {
      errorMessage = error.toString();
      debugPrintStack(stackTrace: st);
    }
  }

  void saveDates(){
    bookingData?.data?.forEach((element) {
      DateTime originalDate = DateTime.parse(element.startDateTime!);
      DateTime modifiedDate = DateTime(
          originalDate.year,
          originalDate.month,
          originalDate.day,
          0, 0, 0, 0, 0
      );
      dataMap[modifiedDate]=element;
    });
  }
}

final postStore = locator<PostStore>();
