class BookingData {
  List<EventSession>? data;
  bool? error;
  String? message;

  BookingData({this.data, this.error, this.message});

  factory BookingData.fromJson(Map<String, dynamic> json) {
    return BookingData(
      data: json['Data'] != null
          ? List<EventSession>.from(json['Data'].map((x) => EventSession.fromJson(x)))
          : null,
      error: json['Error'],
      message: json['Message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Data': data != null ? data!.map((x) => x.toJson()).toList() : null,
      'Error': error,
      'Message': message,
    };
  }
}

class EventSession {
  int? eventSessionId;
  String? eventSessionDate;
  String? startDateTime;
  String? endDateTime;
  int? isAvailable;
  int? isBooked;
  int? isClassSessionFull;
  int? isCanceled;
  int? isRescheduled;
  String? sessionTime;
  int? isNotAttended;
  int? contractID;
  int? cancellationTimeHours;
  String? sessionTitle;

  EventSession({
    this.eventSessionId,
    this.eventSessionDate,
    this.startDateTime,
    this.endDateTime,
    this.isAvailable,
    this.isBooked,
    this.isClassSessionFull,
    this.isCanceled,
    this.isRescheduled,
    this.sessionTime,
    this.isNotAttended,
    this.contractID,
    this.cancellationTimeHours,
    this.sessionTitle,
  });

  factory EventSession.fromJson(Map<String, dynamic> json) {
    return EventSession(
      eventSessionId: json['EventSessionId'],
      eventSessionDate: json['EventSessionDate'],
      startDateTime: json['StartDateTime'],
      endDateTime: json['EndDateTime'],
      isAvailable: json['IsAvailable'],
      isBooked: json['IsBooked'],
      isClassSessionFull: json['IsClassSessionFull'],
      isCanceled: json['IsCanceled'],
      isRescheduled: json['IsRescheduled'],
      sessionTime: json['SessionTime'],
      isNotAttended: json['IsNotAttended'],
      contractID: json['ContractID'],
      cancellationTimeHours: json['CancellationTimeHours'],
      sessionTitle: json['SessionTitle'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'EventSessionId': eventSessionId,
      'EventSessionDate': eventSessionDate,
      'StartDateTime': startDateTime,
      'EndDateTime': endDateTime,
      'IsAvailable': isAvailable,
      'IsBooked': isBooked,
      'IsClassSessionFull': isClassSessionFull,
      'IsCanceled': isCanceled,
      'IsRescheduled': isRescheduled,
      'SessionTime': sessionTime,
      'IsNotAttended': isNotAttended,
      'ContractID': contractID,
      'CancellationTimeHours': cancellationTimeHours,
      'SessionTitle': sessionTitle,
    };
  }
}
