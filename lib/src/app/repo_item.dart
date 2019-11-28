import 'package:dependency_injection_flutter/src/services/models/models.dart'
    show Repo;
import 'package:flutter/material.dart';

class RepoItem extends StatelessWidget {
  final Repo repo;

  const RepoItem({
    @required this.repo,
    Key key,
  })  : assert(repo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(repo.name),
          subtitle: Text('${repo.description}, Updated: ${repo.pushedAt}'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    );
  }
}
