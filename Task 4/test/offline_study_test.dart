import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/data/mock/mock_data.dart';
import 'package:skcl_vms/env_property/skcl/theme/skcl_app_theme.dart';
import 'package:skcl_vms/presentation/all_pages/all_pages_screen.dart';
import 'package:skcl_vms/presentation/router.dart';

void main() {
  setUpAll(() {
    GetIt.instance.reset();
    GetIt.instance.registerSingleton<AppConfig>(
      AppConfig(
        flavorName: 'test',
        plugzmartGraphqlApiBaseUrl: 'https://example.com/graphql',
        appName: 'SKCL VMS',
        lightThemeData: SKCLAppTheme.lightTheme,
        darkThemeData: SKCLAppTheme.darkTheme,
        errorImage: '',
        easyLoadingColor: '#000000',
      ),
    );
    GetIt.instance.registerSingleton<GraphQLClient>(
      GraphQLClient(
        link: HttpLink('https://example.com/graphql'),
        cache: GraphQLCache(),
      ),
    );
  });

  test('MockData returns valid places, accounts, and visitors', () {
    final me = MockData.getMe();
    expect(me.person?.firstName, equals('Admin'));

    final places = MockData.getPlaces();
    expect(places.length, greaterThanOrEqualTo(3));
    expect(places.first.name, isNotEmpty);

    final accounts = MockData.getAccounts();
    expect(accounts.length, greaterThanOrEqualTo(5));
    expect(accounts.first.name, isNotEmpty);

    final visitors = MockData.getVisitors();
    expect(visitors.length, greaterThanOrEqualTo(4));
    expect(visitors.first.firstName, isNotEmpty);
  });

  testWidgets('AllPagesScreen renders all study sections and tiles', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        theme: SKCLAppTheme.lightTheme,
        home: LayoutBuilder(
          builder: (context, constraints) {
            SizeConfig().init(constraints);
            return const AllPagesScreen();
          },
        ),
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Study All Pages'), findsOneWidget);
    expect(find.text('1. Authentication & Onboarding'), findsOneWidget);
    expect(find.text('2. Visitor Flow & Kiosk'), findsOneWidget);
    expect(find.text('Splash Screen'), findsOneWidget);
    expect(find.text('Sign In Screen'), findsOneWidget);
    expect(find.text('Visitor Registry (Home Dashboard)'), findsOneWidget);
  });
}
