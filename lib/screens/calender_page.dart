import 'package:dummy_api_call_retrofit/notwork/store/post_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/colors.dart';
import '../values/style.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  ValueNotifier<DateTime>? selectedDateTime;
  ValueNotifier<bool> _isLoading = ValueNotifier(true);

  @override
  void initState() {
    callApi();
    super.initState();
  }

  callApi() async {
    _isLoading.value = true;
    await postStore.getBookingData();
    _isLoading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, child) {
        return value
            ? const Center(child: CircularProgressIndicator())
            : Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30).r,
                      topRight: Radius.circular(30).r),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25).r,
                  child: Column(
                    children: [
                      20.verticalSpace,
                      _buildCalenderView(),
                      15.verticalSpace,
                      _buildInformation(),
                      30.verticalSpace,
                    ],
                  ),
                ),
              );
      },
      valueListenable: _isLoading,
    );
  }

  Widget _buildCalenderView() {
    return Observer(
      builder: (context) {
        postStore.bookingData;
        return Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                color: AppColor.colorF8F8F8,
              ),
              child: CalendarCarousel<Event>(
                dayCrossAxisAlignment: CrossAxisAlignment.start,
                dayMainAxisAlignment: MainAxisAlignment.start,
                daysHaveCircularBorder: true,
                daysTextStyle: textBlack12_400,
                weekdayTextStyle: textBlack12_400,
                selectedDayButtonColor: AppColor.appColorBlue,
                //selectedDateTime: value,
                pageScrollPhysics: const NeverScrollableScrollPhysics(),
                onDayPressed: (date, eventsList) {
                  //widget.selectedDateTime.value = date;
                },
                todayButtonColor: AppColor.grey,
                todayBorderColor: AppColor.grey,
                weekDayMargin: EdgeInsets.all(0),
                selectedDayTextStyle: textBlack12_400,
                headerTextStyle: textBlack14_500,
                rightButtonIcon: Icon(Icons.chevron_right),
                leftButtonIcon: Icon(Icons.chevron_left),
                height: 350.h,
                inactiveDaysTextStyle: text_858585_12_400,
                customDayBuilder: (isSelectable,
                    index,
                    isSelectedDay,
                    isToday,
                    isPrevMonthDay,
                    textStyle,
                    isNextMonthDay,
                    isThisMonthDay,
                    day) {
                  debugPrint("AVABILITY DAY $day");

                  bool isAvailable =
                      postStore.dataMap[day]?.isAvailable == 1 ? true : false;
                  bool isCancelled =
                      postStore.dataMap[day]?.isCanceled == 1 ? true : false;
                  bool isBooked =
                      postStore.dataMap[day]?.isBooked == 1 ? true : false;

                  Color? dayColor = Colors.white;


                  if (isCancelled) {
                    dayColor = Colors.red;
                  } else if (isAvailable) {
                    dayColor = Colors.blue[100];
                  } else if (isBooked) {
                    if(isDateInPast(day)){
                      dayColor = Colors.green;
                    } else {
                      dayColor = Colors.blue;
                    }
                  } else {
                    dayColor = Colors.white;
                  }

                  if (isToday) {
                    return Container(
                      alignment: Alignment.center,
                      child: Text(
                        day.day.toString(),
                        style: textBlack12_400.copyWith(color: AppColor.white),
                      ),
                    );
                  } else {
                    return Container(
                      color: dayColor,
                      alignment: Alignment.center,
                      child: Text(
                        day.day.toString(),
                        style: text_858585_12_400,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
  bool isDateInPast(DateTime date) {
    DateTime currentDate = DateTime.now();
    return date.isBefore(currentDate);
  }

  Widget _buildInformation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          8.verticalSpace,
          Row(
            children: [
              _buildLegendItem(Colors.blue[100]!, 'Available'),
              _buildLegendItem(Colors.blue, 'Booked'),
              _buildLegendItem(Colors.pinkAccent, 'Full'),
            ],
          ),
          8.verticalSpace,
          Row(
            children: [
              _buildLegendItem(Colors.red, 'Canceled'),
              _buildLegendItem(Colors.green, 'Attended'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Text(label),
        SizedBox(width: 16),
      ],
    );
  }
}
