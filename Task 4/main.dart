import 'package:dart_date/dart_date.dart';

main(List<String> arguments) {
  String date = DateTime.now().format('yyyy-MM-dd').toString();
  String time = DateTime.now().format('HH:mm').toString();
  String am = DateTime.now().format('hh:mm a').toString();
  print("am $am");
  print('date $date');
  print('time $time');
  print("fdfdfd ${DateTime.parse("$date $time")}");
  print(
      "fdfdfd ${DateTime.parse("$date $time").toUtc().format("yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'")}");
}
