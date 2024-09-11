// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostStore on PostStoreBase, Store {
  late final _$bookingDataAtom =
      Atom(name: 'PostStoreBase.bookingData', context: context);

  @override
  BookingData? get bookingData {
    _$bookingDataAtom.reportRead();
    return super.bookingData;
  }

  @override
  set bookingData(BookingData? value) {
    _$bookingDataAtom.reportWrite(value, super.bookingData, () {
      super.bookingData = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: 'PostStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  @override
  String toString() {
    return '''
bookingData: ${bookingData},
errorMessage: ${errorMessage}
    ''';
  }
}
