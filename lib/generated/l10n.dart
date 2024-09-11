// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Flutter Demo Structure`
  String get applicationTitle {
    return Intl.message(
      'Flutter Demo Structure',
      name: 'applicationTitle',
      desc: '',
      args: [],
    );
  }

  /// `The connection has timed out. Please try again`
  String get connectionTimedOut {
    return Intl.message(
      'The connection has timed out. Please try again',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `There are some problems with the connection. Please try again`
  String get connectionProblem {
    return Intl.message(
      'There are some problems with the connection. Please try again',
      name: 'connectionProblem',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalidCredentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Geofencing`
  String get geofencing {
    return Intl.message(
      'Geofencing',
      name: 'geofencing',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Request:`
  String get invalidRequest {
    return Intl.message(
      'Invalid Request:',
      name: 'invalidRequest',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorised:`
  String get unauthorised {
    return Intl.message(
      'Unauthorised:',
      name: 'unauthorised',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Input:`
  String get invalidInput {
    return Intl.message(
      'Invalid Input:',
      name: 'invalidInput',
      desc: '',
      args: [],
    );
  }

  /// `No Active Internet Connection`
  String get noActiveInternetConnection {
    return Intl.message(
      'No Active Internet Connection',
      name: 'noActiveInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Connection to server failed due to internet connection.`
  String get connectionToServerFailedDueToInternetConnection {
    return Intl.message(
      'Connection to server failed due to internet connection.',
      name: 'connectionToServerFailedDueToInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try after sometime.`
  String get somethingWentWrongPleaseTryAfterSometime {
    return Intl.message(
      'Something went wrong. Please try after sometime.',
      name: 'somethingWentWrongPleaseTryAfterSometime',
      desc: '',
      args: [],
    );
  }

  /// `Request to server was cancelled`
  String get requestToServerWasCancelled {
    return Intl.message(
      'Request to server was cancelled',
      name: 'requestToServerWasCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout with server`
  String get connectionTimeoutWithServer {
    return Intl.message(
      'Connection timeout with server',
      name: 'connectionTimeoutWithServer',
      desc: '',
      args: [],
    );
  }

  /// `Request can't be handled for now. Please try after sometime.`
  String get requestCantBeHandledForNowPleaseTryAfterSometime {
    return Intl.message(
      'Request can\'t be handled for now. Please try after sometime.',
      name: 'requestCantBeHandledForNowPleaseTryAfterSometime',
      desc: '',
      args: [],
    );
  }

  /// `Please login again.`
  String get pleaseLoginAgain {
    return Intl.message(
      'Please login again.',
      name: 'pleaseLoginAgain',
      desc: '',
      args: [],
    );
  }

  /// `Something when wrong. Please try again.`
  String get somethingWhenWrongPleaseTryAgain {
    return Intl.message(
      'Something when wrong. Please try again.',
      name: 'somethingWhenWrongPleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Error uploading photo`
  String get errorUploadingPhoto {
    return Intl.message(
      'Error uploading photo',
      name: 'errorUploadingPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknownError {
    return Intl.message(
      'Unknown error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
