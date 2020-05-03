import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:dependency_injection_flutter/src/services/models/errors/network_error.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;

class GitHubClient {
  final _baseUrl = 'https://api.github.com/users';
  final Client client;

  GitHubClient({
    @required this.client,
  }) : assert(client != null);

  Future<BuiltList<Repo>> fetchListOfRepos({
    String user,
  }) async {
    final response = await client.get(
      '$_baseUrl/$user/repos',
      headers: {
        HttpHeaders.acceptHeader: '*/*',
        HttpHeaders.cacheControlHeader: 'no-cache',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );

    print('GitHubClient:fetchListOfRepos: ${response.statusCode}');

    if (response.statusCode == 200) {
      return compute(Repo.parseListOfRepos, response.body);
    } else {
      throw NetworkError(message: response.statusCode.toString());
    }
  }
}

extension GitHubClientExtension on GitHubClient {
  // Future<BuiltList<Repo>> get mock async {
  //   final mockItem = '''{archived: false,
  //   description: 'Mock Description',
  //   html_url: 'httt://mock.com',
  //   name: 'Mock Repo',
  //   pushed_at: '2019--7-23 14:16:34.000Z'}''';
  //   final mockList = BuiltList.of([Repo.fromJson(mockItem)]);
  //   print('mockList $mockList');
  //   return Future(() => mockList);
  // }

  static GitHubClient get mock {
    return GitHubClient(client: Client());
  }
}
