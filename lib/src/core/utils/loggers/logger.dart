import 'dart:async';
import 'package:flutter/material.dart';
import 'package:l/l.dart';



class Log {
  static const LogOptions _logOptions = LogOptions(
    printColors: true,
    outputInRelease: true,
  );

  static T runLogging<T>(T Function() body) => l.capture(body, _logOptions);

  static void flutterError(FlutterErrorDetails details) {
    l.e(details.exceptionAsString(), details.stack);
  }

  static void zoneError(Object error, StackTrace stackTrace) {
    l.e(error.toString(), stackTrace);
  }

  static void d(Object message, {String? name}) {
    l.d(_format(name, message));
  }

  static void i(Object message, {String? name}) {
    l.i(_format(name, message));
  }

  static void w(Object message, {String? name}) {
    l.w(_format(name, message));
  }

  static void e(Object message, {String? name, StackTrace? stackTrace}) {
    l.e(_format(name, message), stackTrace);
  }

  static Object _format(String? name, Object message) =>
      name != null ? '[$name] $message' : message;
}
