import 'package:skcl_vms/data/graphql/utility/auth_link.dart';
import 'package:skcl_vms/data/graphql/utility/error_link.dart';
import 'package:graphql/client.dart';

const String fileName = 'lib/data/graphql/client.dart';

class GraphQLService {
  late GraphQLClient _client;
  DedupeLink _dedupeLink = new DedupeLink();
  ErrorLink _errorLink = new ErrorLink(
    onGraphQLError: onGraphQLError,
    onException: onGraphQLException,
  );

  GraphQLService(String stackURI) {
    HttpLink _httpLink = HttpLink(
      stackURI,
    );

    final Link _link = Link.from([
      _dedupeLink,
      _errorLink,
      new CustomAuthLink(),
      _httpLink,
    ]);

    _client = GraphQLClient(
      link: _link,
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.none,
        ),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.none,
        ),
        watchQuery: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.none,
        ),
        watchMutation: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.none,
        ),
      ),
      cache: GraphQLCache(),
    );
  }

  GraphQLClient getGqlClient() {
    return _client;
  }
}
