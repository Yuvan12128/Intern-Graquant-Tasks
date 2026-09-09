import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/model/sign_in_otp_verification.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_history/model/visitor_history.dart';

class AllPagesScreen extends StatelessWidget {
  const AllPagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBar(
        context,
        "Study All Pages",
        true,
        null,
        null,
        false,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 4 * SizeConfig.widthMultiplier,
            vertical: 2 * SizeConfig.heightMultiplier,
          ),
          children: [
            Container(
              padding: EdgeInsets.all(3 * SizeConfig.widthMultiplier),
              margin: EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.08),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.school_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 28,
                  ),
                  SizedBox(width: 3 * SizeConfig.widthMultiplier),
                  Expanded(
                    child: Text(
                      'Explore all screens in the app without backend dependencies. Tap any card below to launch the screen directly with mock data.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            _buildSection(context, "1. Authentication & Onboarding", [
              _PageItem(
                title: "Splash Screen",
                routeName: RouteName.SPLASH_SCREEN,
                description: "Initial branding, splash animation and version loading",
                filePath: "lib/presentation/splash/splash_screen.dart",
                icon: Icons.flash_on_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.SPLASH_SCREEN),
              ),
              _PageItem(
                title: "Sign In Screen",
                routeName: RouteName.SIGN_IN_SCREEN,
                description: "Phone number input with validation and skip button",
                filePath: "lib/presentation/sign_in/sign_in_screen.dart",
                icon: Icons.login_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.SIGN_IN_SCREEN),
              ),
              _PageItem(
                title: "OTP Verification Screen",
                routeName: RouteName.SIGN_IN_OTP_VERIFICATION_SCREEN,
                description: "6-digit OTP code input (Use mock OTP: 123456)",
                filePath: "lib/presentation/sign_in_otp_verification/sign_in_otp_verification_screen.dart",
                icon: Icons.sms_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.SIGN_IN_OTP_VERIFICATION_SCREEN,
                  arguments: SignInOTPVerification('+91 98765 43210'),
                ),
              ),
            ]),

            _buildSection(context, "2. Visitor Flow & Kiosk", [
              _PageItem(
                title: "Visitor Registry (Home Dashboard)",
                routeName: RouteName.VISITOR_REGISTRY_SCREEN,
                description: "Main dashboard with role-based action buttons & drawer",
                filePath: "lib/presentation/visitor_registry/visitor_registry_screen.dart",
                icon: Icons.dashboard_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.VISITOR_REGISTRY_SCREEN),
              ),
              _PageItem(
                title: "Visitor Phone Verification (Kiosk)",
                routeName: RouteName.VISITOR_PHONE_NUMBER_VERIFICATION_SCREEN,
                description: "Kiosk screen for visitor check-in phone verification",
                filePath: "lib/presentation/visitor_phone_number_verification/visitor_phone_number_verification_screen.dart",
                icon: Icons.phone_android_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_PHONE_NUMBER_VERIFICATION_SCREEN,
                ),
              ),
              _PageItem(
                title: "Visitor Entry Form (Walk-in)",
                routeName: RouteName.VISITOR_ENTRY_FORM_SCREEN,
                description: "Full registration form: Photo, host company, floor, purpose",
                filePath: "lib/presentation/visitor_entry_form/visitor_entry_form_screen.dart",
                icon: Icons.app_registration_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_ENTRY_FORM_SCREEN,
                  arguments: VisitorEntry(
                    meetingType: MeetingType.UNPLANNED,
                    phoneNumber: '+91 98765 43210',
                    phoneNumberVerified: true,
                  ),
                ),
              ),
              _PageItem(
                title: "Schedule Appointment Form",
                routeName: RouteName.VISITOR_ENTRY_FORM_SCREEN,
                description: "Form for scheduling future visitor appointments",
                filePath: "lib/presentation/visitor_entry_form/visitor_entry_form_screen.dart",
                icon: Icons.edit_calendar_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_ENTRY_FORM_SCREEN,
                  arguments: VisitorEntry(
                    meetingType: MeetingType.PLANNED,
                    phoneNumber: null,
                    phoneNumberVerified: true,
                  ),
                ),
              ),
            ]),

            _buildSection(context, "3. Visitor Records & History", [
              _PageItem(
                title: "Visitor History",
                routeName: RouteName.VISITOR_HISTORY_SCREEN,
                description: "Log of past and checked-in visitors with check-out actions",
                filePath: "lib/presentation/visitor_history/visitor_history_screen.dart",
                icon: Icons.history_toggle_off_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_HISTORY_SCREEN,
                  arguments: VisitorHistory(doPlannedVisitorRequired: false),
                ),
              ),
              _PageItem(
                title: "Planned Appointments List",
                routeName: RouteName.VISITOR_HISTORY_SCREEN,
                description: "Scheduled future appointments view",
                filePath: "lib/presentation/visitor_history/visitor_history_screen.dart",
                icon: Icons.event_available_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_HISTORY_SCREEN,
                  arguments: VisitorHistory(doPlannedVisitorRequired: true),
                ),
              ),
              _PageItem(
                title: "Visitor History Filter Screen",
                routeName: RouteName.VISITOR_HISTORY_FILTER_SCREEN,
                description: "Filter visitors by building, company, and date ranges",
                filePath: "lib/presentation/visitor_history/visitor_history_filter_screen.dart",
                icon: Icons.filter_alt_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_HISTORY_FILTER_SCREEN,
                ),
              ),
              _PageItem(
                title: "Visitor Detail Screen",
                routeName: RouteName.VISITOR_DETAIL_SCREEN,
                description: "Comprehensive visitor summary, badge pass, & check-out",
                filePath: "lib/presentation/visitor_detail/visitor_detail_screen.dart",
                icon: Icons.badge_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.VISITOR_DETAIL_SCREEN,
                  arguments: VisitorDetail(
                    visitoryHistory: MockData.getVisitors().first,
                  ),
                ),
              ),
            ]),

            _buildSection(context, "4. Company & Tenant Management", [
              _PageItem(
                title: "Company List Screen",
                routeName: RouteName.COMPANY_LIST_SCREEN,
                description: "Directory of tenant companies, buildings, blocks & floors",
                filePath: "lib/presentation/company_list/company_list_screen.dart",
                icon: Icons.business_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.COMPANY_LIST_SCREEN),
              ),
              _PageItem(
                title: "Company Filter Screen",
                routeName: RouteName.COMPANY_FILTER_SCREEN,
                description: "Filter companies by location, building and block",
                filePath: "lib/presentation/company_list/company_list_filter_screen.dart",
                icon: Icons.filter_list_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.COMPANY_FILTER_SCREEN),
              ),
              _PageItem(
                title: "Company Detail Screen",
                routeName: RouteName.COMPANY_DETAIL_SCREEN,
                description: "Detailed company overview, location details, and floor plan",
                filePath: "lib/presentation/company_detail/company_detail_screen.dart",
                icon: Icons.apartment_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.COMPANY_DETAIL_SCREEN,
                  arguments: CompanyDetail(
                    companyDetail: MockData.getAccounts().first,
                  ),
                ),
              ),
              _PageItem(
                title: "Company Contact Screen",
                routeName: RouteName.COMPANY_CONTACT_SCREEN,
                description: "Key company personnel, phone numbers and email contacts",
                filePath: "lib/presentation/company_contact/company_contact_screen.dart",
                icon: Icons.contacts_outlined,
                onTap: () => Navigator.pushNamed(
                  context,
                  RouteName.COMPANY_CONTACT_SCREEN,
                ),
              ),
            ]),

            _buildSection(context, "5. Profile & Settings", [
              _PageItem(
                title: "My Profile Screen",
                routeName: RouteName.PROFILE_SCREEN,
                description: "View and edit user profile info (name, email, role)",
                filePath: "lib/presentation/profile/profile_screen.dart",
                icon: Icons.person_outline_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.PROFILE_SCREEN),
              ),
              _PageItem(
                title: "Settings Screen",
                routeName: RouteName.SETTING_SCREEN,
                description: "Security/Staff settings, building selection and preferences",
                filePath: "lib/presentation/setting_page/setting_screen.dart",
                icon: Icons.settings_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.SETTING_SCREEN),
              ),
            ]),

            _buildSection(context, "6. Error & Offline States", [
              _PageItem(
                title: "General Error Screen",
                routeName: RouteName.ERROR_SCREEN,
                description: "Display for unexpected errors or exceptions",
                filePath: "lib/presentation/error/error_screen.dart",
                icon: Icons.error_outline_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.ERROR_SCREEN),
              ),
              _PageItem(
                title: "Network Error Screen",
                routeName: RouteName.NETWORK_ERROR_SCREEN,
                description: "Disconnected internet connection prompt with retry button",
                filePath: "lib/presentation/network_error/network_error_screen.dart",
                icon: Icons.wifi_off_outlined,
                onTap: () => Navigator.pushNamed(context, RouteName.NETWORK_ERROR_SCREEN),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  static Widget _buildSection(BuildContext context, String title, List<_PageItem> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.5 * SizeConfig.heightMultiplier),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        ...items.map((item) => _buildCard(context, item)),
        SizedBox(height: 1 * SizeConfig.heightMultiplier),
      ],
    );
  }

  static Widget _buildCard(BuildContext context, _PageItem item) {
    return Card(
      margin: EdgeInsets.only(bottom: 1.5 * SizeConfig.heightMultiplier),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: item.onTap,
        child: Padding(
          padding: EdgeInsets.all(3.5 * SizeConfig.widthMultiplier),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(2.5 * SizeConfig.widthMultiplier),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  item.icon,
                  color: Theme.of(context).colorScheme.primary,
                  size: 24,
                ),
              ),
              SizedBox(width: 3 * SizeConfig.widthMultiplier),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).textTheme.titleMedium?.color,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 0.5 * SizeConfig.heightMultiplier),
                    Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 12.5,
                        color: Theme.of(context).textTheme.bodySmall?.color ?? Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 0.8 * SizeConfig.heightMultiplier),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey[800]
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        item.filePath,
                        style: TextStyle(
                          fontSize: 10.5,
                          fontFamily: 'monospace',
                          color: Theme.of(context).textTheme.bodySmall?.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageItem {
  final String title;
  final String routeName;
  final String description;
  final String filePath;
  final IconData icon;
  final VoidCallback onTap;

  _PageItem({
    required this.title,
    required this.routeName,
    required this.description,
    required this.filePath,
    required this.icon,
    required this.onTap,
  });
}
