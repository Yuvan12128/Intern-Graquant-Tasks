// Basic smoke test for the SKCL VMS app.
//
// AppContainer pulls in AppConfig and a GraphQLClient from GetIt (normally
// registered in appMain()), so this test registers lightweight stand-ins
// before pumping the widget tree, then just verifies the app builds without
// throwing.

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/app_container.dart';
import 'package:skcl_vms/env_property/skcl/theme/skcl_app_theme.dart';

void main() {
  setUp(() {
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

  testWidgets('App builds without throwing', (WidgetTester tester) async {
    await tester.pumpWidget(AppContainer());
    await tester.pump();

    expect(find.byType(AppContainer), findsOneWidget);
  });
}
