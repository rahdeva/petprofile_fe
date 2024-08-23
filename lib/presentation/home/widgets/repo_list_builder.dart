import 'package:flutter/material.dart';
import 'package:petprofile_fe/data/models/github_repository.dart';
import 'package:petprofile_fe/presentation/home/bloc/home_bloc.dart';
import 'package:petprofile_fe/presentation/home/widgets/repo_list_item.dart';

class RepoListBuilder extends StatelessWidget {
  const RepoListBuilder({
    super.key, 
    required this.context, 
    required this.state,
  });

  final BuildContext context;
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    List<GitHubRepository> repositories = state.maybeWhen(
      loaded: (repo, loadMore) => repo,
      orElse: () => [],
    );

    return ListView.separated(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: repositories.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const Divider(
            color: Colors.grey,
            thickness: 0.25,
          ),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return RepoListItem(
          item: repositories[index],
        );
      }
    );
  }
}