import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:petprofile_fe/core/constants/colors.dart';
import 'package:petprofile_fe/core/routes/app_router.gr.dart';
import 'package:petprofile_fe/data/models/github_repository.dart';

class RepoListItem extends StatelessWidget {
  const RepoListItem({
    super.key, 
    required this.item,
  });

  final GitHubRepository item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        showTrailingIcon: false,
        dense: true,
        tilePadding: EdgeInsets.zero,
        shape: const Border(),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(
                item.owner?.avatarUrl ?? ""
              ),
            ),
          ),
        ),
        title: Text(
          item.owner?.login ?? "-",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Text(
          item.name ?? "-",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        children: <Widget>[
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            leading: const SizedBox(
              height: 40,
              width: 40
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.description ?? "-",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.circle,
                          size: 14,
                          color: Colors.black
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.language ?? "-",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.stargazersCount.toString(),
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.fork_left,
                          size: 14,
                          color: Colors.black
                        ),
                        const SizedBox(width: 4),
                        Text(
                          item.forksCount.toString(),
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: (){
                    context.router.push(
                      DetailRoute(
                        owner: item.owner?.login ?? "-",
                        repo: item.name ?? '-'
                      )
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1, color: AppColors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  child:Text(
                    'See Detail',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Add more widgets as children if needed
        ],
      ),
    );
  }
}
