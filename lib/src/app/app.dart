import 'package:dependency_injection_flutter/src/services/github/github_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  final _demo = GitHubClient(client: Client());

  void _fetchRepos() async {
    final items = await _demo.fetchListOfRepos(user: 'minikin');
    print('StatelessWidget: $items');
  }

  @override
  Widget build(BuildContext context) {
    _fetchRepos();
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '''He determined to drop his litigation with the monastry,
                and relinguish his claims to the wood-cuting and fishery rihgts at once.
                He was the more ready to do this becuase the rights had becom much less valuable,
                and he had indeed the vaguest idea where the wood and river in quedtion were.''',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
