import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:petprofile_fe/data/datasources/local/shared_preference_manager.dart';
import 'package:petprofile_fe/data/datasources/remote/github_repository_remote_datasource.dart';
import 'package:petprofile_fe/data/models/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final GitHubRepositoryRemoteDatasource githubRepoRemoteDatasource;
  final SharedPreferencesManager sharedPreferencesManager;

  DetailBloc(
    this.githubRepoRemoteDatasource,
    this.sharedPreferencesManager,
  ) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      if (await checkConnectivity()) {
        emit(const _Loading());
        final response = await githubRepoRemoteDatasource.getRepositoryDetail(
          owner: event.owner,
          repo: event.repo,
        );
        response.fold(
          (error) => emit(_Error(error)),
          (data) {
            emit(_Loaded(data));
            sharedPreferencesManager.setRepositoryDetail('repo_${event.repo}', data);
          },
        );
      } else {
        GitHubRepository? cachedData = sharedPreferencesManager.getRepositoryDetail('repo_${event.repo}');
        if (cachedData != null) {
          emit(_Loaded(cachedData));
        } else {
          emit(const _Error('No internet connection and no cached data available.'));
        }
      }
    });
  }

  Future<bool> checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }
}
