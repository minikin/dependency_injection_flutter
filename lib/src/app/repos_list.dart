import 'package:dependency_injection_flutter/src/app/repo_item.dart';
import 'package:dependency_injection_flutter/src/services/models/models.dart'
    show Repo;
import 'package:flutter/material.dart';

class ReposList extends StatelessWidget {
  final List<Repo> repos;

  const ReposList({
    @required this.repos,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: repos.length,
        itemBuilder: (_, index) {
          return RepoItem(
            repo: repos[index],
          );
        },
      ),
    );
  }
}
