import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/relativeTime.dart';
import 'package:jiffy/src/enums/startOfWeek.dart';

class ViLocale extends Locale {
  StartOfWeek strtOfWeek;
  ViLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => ViRelativeTime();

  @override
  List<String>? ordinals() => ['', '', '', ''];

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class ViRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'trước';
  @override
  String suffixFromNow() => 'tới';
  @override
  String lessThanOneMinute(int seconds) => 'vài giây';
  @override
  String aboutAMinute(int minutes) => '1 phút';
  @override
  String minutes(int minutes) => '$minutes phút';
  @override
  String aboutAnHour(int minutes) => '1 giờ';
  @override
  String hours(int hours) => '$hours giờ';
  @override
  String aDay(int hours) => '1 ngày';
  @override
  String days(int days) => '$days ngày';
  @override
  String aboutAMonth(int days) => '1 tháng';
  @override
  String months(int months) => '$months tháng';
  @override
  String aboutAYear(int year) => '1 năm';
  @override
  String years(int years) => '$years năm';
  @override
  String wordSeparator() => ' ';
}
