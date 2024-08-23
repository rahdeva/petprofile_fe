import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petprofile_fe/core/components/shimmer.dart';
import 'package:petprofile_fe/core/core.dart';
import 'package:petprofile_fe/presentation/detail/bloc/detail_bloc.dart';
import 'package:petprofile_fe/presentation/detail/widgets/data_detail_item.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  final String owner;
  final String repo;

  const DetailPage({
    super.key,
    required this.owner,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    RefreshController refreshController = RefreshController(initialRefresh: false);
    DetailBloc detailBloc = context.read<DetailBloc>()
      ..add(DetailEvent.fetch(owner: owner, repo: repo));

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Detail Repository',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        elevation: 0.5,
        shadowColor: Colors.grey,
      ),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          return SmartRefresher(
            enablePullDown: true,
            enablePullUp: false,
            controller: refreshController,
            onRefresh: () {
              detailBloc.add(DetailEvent.fetch(owner: owner, repo: repo));
              refreshController.refreshCompleted();
            },
            child: state.maybeWhen(
              loading: () => ShimmerWidget.detailScreenShimmer(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16)
              ),
              error: (error) => ErrorPage(onRetry: (){
                detailBloc.add(DetailEvent.fetch(owner: owner, repo: repo));
              }),
              orElse: () => ShimmerWidget.detailScreenShimmer(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16)
              ),
              loaded: (repository) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.white,
                            backgroundImage: NetworkImage(
                              repository.owner?.avatarUrl ?? "-"
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            repository.owner?.login ?? "-",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        repository.name ?? "-",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        repository.description ?? "-",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.description),
                        title: "Licences",
                        subtitle: repository.license?.name ?? "-",
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.language),
                        title: "Language",
                        subtitle: repository.language ?? "-",
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.star),
                        title: "Total Star",
                        subtitle: repository.stargazersCount.toString(),
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.fork_left),
                        title: "Total Fork",
                        subtitle: repository.forksCount.toString(),
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.link),
                        title: "URL GitHub",
                        subtitle: repository.htmlUrl ?? "-",
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.date_range),
                        title: "Created at",
                        subtitle: repository.createdAt ?? "-",
                      ),
                      const SizedBox(height: 16),
                      DataDetailItem(
                        icon: const Icon(Icons.update),
                        title: "Latest update at",
                        subtitle: repository.updatedAt ?? "-",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
