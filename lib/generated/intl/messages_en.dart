// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "applicationTitle":
            MessageLookupByLibrary.simpleMessage("Flutter Demo Structure"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Change Language"),
        "connectionProblem": MessageLookupByLibrary.simpleMessage(
            "There are some problems with the connection. Please try again"),
        "connectionTimedOut": MessageLookupByLibrary.simpleMessage(
            "The connection has timed out. Please try again"),
        "connectionTimeoutWithServer": MessageLookupByLibrary.simpleMessage(
            "Connection timeout with server"),
        "connectionToServerFailedDueToInternetConnection":
            MessageLookupByLibrary.simpleMessage(
                "Connection to server failed due to internet connection."),
        "errorUploadingPhoto":
            MessageLookupByLibrary.simpleMessage("Error uploading photo"),
        "geofencing": MessageLookupByLibrary.simpleMessage("Geofencing"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "invalidCredentials":
            MessageLookupByLibrary.simpleMessage("Invalid credentials"),
        "invalidInput": MessageLookupByLibrary.simpleMessage("Invalid Input:"),
        "invalidRequest":
            MessageLookupByLibrary.simpleMessage("Invalid Request:"),
        "noActiveInternetConnection": MessageLookupByLibrary.simpleMessage(
            "No Active Internet Connection"),
        "pleaseLoginAgain":
            MessageLookupByLibrary.simpleMessage("Please login again."),
        "requestCantBeHandledForNowPleaseTryAfterSometime":
            MessageLookupByLibrary.simpleMessage(
                "Request can\'t be handled for now. Please try after sometime."),
        "requestToServerWasCancelled": MessageLookupByLibrary.simpleMessage(
            "Request to server was cancelled"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Select Language"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "somethingWentWrongPleaseTryAfterSometime":
            MessageLookupByLibrary.simpleMessage(
                "Something went wrong. Please try after sometime."),
        "somethingWhenWrongPleaseTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "Something when wrong. Please try again."),
        "unauthorised": MessageLookupByLibrary.simpleMessage("Unauthorised:"),
        "unknownError": MessageLookupByLibrary.simpleMessage("Unknown error")
      };
}
