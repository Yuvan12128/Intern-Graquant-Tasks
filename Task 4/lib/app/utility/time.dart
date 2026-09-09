import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:skcl_vms/app/log/util/log.dart';

class Time {
  static String getHoursAndMinutes(String? timeStamp) {
    if (timeStamp != null) {
      final DateTime time = DateTime.parse(timeStamp).toLocalTime;
      return time.format('hh : mm a').toString();
    } else {
      return 'NA';
    }
  }

  static String getTotalDuration(
    BuildContext context,
    String fileName,
    String? startTime,
    String? endTime,
  ) {
    if (startTime != null) {
      String currentDateTimeUTC = DateTime.now().toUtc().toString();
      final int totalMilliseconds =
          DateTime.parse(endTime ?? currentDateTimeUTC)
              .differenceInMilliseconds(DateTime.parse(startTime));
      if (totalMilliseconds >= 0) {
        final int minutes = ((totalMilliseconds / 1000 / 60) % 60).ceil();
        final int hours = ((totalMilliseconds / (1000 * 60 * 60)) % 24).floor();
        if (hours > 0) {
          return '$hours hr ${minutes > 0 ? '${minutes.bitLength > 2 ? ': $minutes' : ': 0$minutes'} min' : ''}';
        } else {
          return '${minutes.bitLength > 2 ? minutes : '0$minutes'} min';
        }
      } else {
        Log.error(
          context,
          fileName,
          "getTotalDuration",
          "get total duration is wrong value",
          "Get charging session total duration",
          null,
          false,
          null,
          null,
        );
        return 'NA';
      }
    } else {
      return 'NA';
    }
  }

  static String getReadableTime(String? timeStamp) {
    if (timeStamp != null) {
      final String time = DateTime.parse(timeStamp)
          .toLocalTime
          .format('E, MMMM dd, y')
          .toString();
      return time;
    } else {
      return 'NA';
    }
  }

  static String getDateTimeFormat(
    String? dateTime,
  ) {
    if (dateTime != null) {
      final DateTime dateTimeValue = DateTime.parse(dateTime).toLocalTime;
      String dateFormat = dateTimeValue.format('yyyy-MM-dd hh:mm a').toString();
      return dateFormat;
    } else {
      return 'NA';
    }
  }

  static getTotalMinutes(
    BuildContext context,
    DateTime? givenAPIDateTime,
    String fileName,
  ) {
    if (givenAPIDateTime != null) {
      DateTime currentDateTimeUTC = DateTime.now().toUtc();
      int totalMinutes =
          currentDateTimeUTC.differenceInMinutes(givenAPIDateTime);
      if (totalMinutes >= 0) {
        return "${totalMinutes.toString()} min ago";
      } else {
        Log.error(
          context,
          fileName,
          "getTotalDuration",
          "get total minutes is wrong value",
          "Get charging session update time is wrong",
          null,
          false,
          null,
          null,
        );
        return 'NA';
      }
    } else {
      return 'NA';
    }
  }

  static String time12to24HoursFormat(String time) {
    int hour = int.parse(time.split(":").first);
    int minute = int.parse(time.split(":").last.split(" ").first);
    String meridium = time.split(":").last.split(" ").last.toLowerCase();
    if (meridium == "pm") {
      if (hour != 12) {
        hour = hour + 12;
      }
    }
    if (meridium == "am") {
      if (hour == 12) {
        hour = 00;
      }
    }
    String newTime =
        "${hour == 0 ? "00" : hour.toString().padLeft(2, '0')}:${minute == 0 ? "00" : minute}";
    return newTime;
  }
}
