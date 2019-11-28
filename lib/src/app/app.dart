import 'package:built_collection/built_collection.dart';
import 'package:dependency_injection_flutter/src/app/repos_list.dart';
import 'package:dependency_injection_flutter/src/environment/environment.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart'
    show Repo;
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Repos'),
        ),
        body: SafeArea(
          child: Center(
            child: FutureBuilder<BuiltList<Repo>>(
              future: Current.gitHubClient.fetchListOfRepos(user: 'minikin'),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ReposList(repos: snapshot.data.toList());
                } else if (snapshot.hasError) {
                  return Text(
                    '${snapshot.error}',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
