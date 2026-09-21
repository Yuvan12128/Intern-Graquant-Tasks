import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart';

class VisitorEntry {
  final MeetingType? meetingType;
  final String? phoneNumber;
  final bool? phoneNumberVerified;
  Query$Visitors$visitors$values? visitorDetail;
  VisitorEntry({
    required this.meetingType,
    required this.phoneNumber,
    required this.phoneNumberVerified,
    this.visitorDetail,
  });
}
