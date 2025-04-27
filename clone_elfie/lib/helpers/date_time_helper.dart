class DateTimeHelper {
  static String getDateTimeString(DateTime dateTime) {
    return dateTime.toLocal().toString().split(' ')[0];
  }

  static DateTime getDateTimeFromString(String dateString) {
    return DateTime.parse(dateString).toLocal();
  }

  static DateTime getDateTimeFromStringWithFormat(
      String dateString, String format) {
    return DateTime.parse(dateString).toLocal();
  }

  static String getTimeDifference(DateTime dataTime) {
    final now = DateTime.now();
    final difference = dataTime.difference(now);

    if (difference.isNegative) {
      return "Time has already passed.";
    }

    if (difference.inHours > 0) {
      return "Redeemed ${difference.inHours} hour(s) of your time";
    } else if (difference.inMinutes > 0) {
      return "Redeemed ${difference.inMinutes} minute(s) of your time";
    } else if (difference.inSeconds > 0) {
      return "Redeemed ${difference.inSeconds} second(s) of your time";
    }

    return "Less than a second.";
  }
}
