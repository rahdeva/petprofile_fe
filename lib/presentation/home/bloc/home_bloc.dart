import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:petprofile_fe/data/datasources/local/shared_preference_manager.dart';
import 'package:petprofile_fe/data/datasources/remote/github_repository_remote_datasource.dart';
import 'package:petprofile_fe/data/models/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GitHubRepositoryRemoteDatasource githubRepoRemoteDatasource;
  final SharedPreferencesManager sharedPreferencesManager;
  int _currentPage = 1;
  bool _hasNext = true;
  List<GitHubRepository> _allRepositories = [];

  HomeBloc(
    this.githubRepoRemoteDatasource,
    this.sharedPreferencesManager,
  ) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      if (await checkConnectivity()) {
        emit(const _Loading());
        _currentPage = 1;
        final response = await githubRepoRemoteDatasource.getRepositories();
        response.fold(
          (error) => emit(_Error(error)),
          (data) {
            _allRepositories = data;
            _hasNext = data.length >= 10;
            emit(_Loaded(data, _hasNext));

            // cache
            sharedPreferencesManager.setRepositories('repo', data);
          },
        );
      } else {
        List<GitHubRepository>? cachedData = sharedPreferencesManager.getRepositories('repo');
        if (cachedData != null && cachedData.isNotEmpty) {
          _allRepositories = cachedData;
          _hasNext = cachedData.length >= 10;
          emit(_Loaded(cachedData, _hasNext));
        } else {
          emit(const _Error('No internet connection and no cached data available.'));
        }
      }
    });

    on<_Refresh>((event, emit) async {
      if (await checkConnectivity()) {
        emit(const _Loading());
        _currentPage = 1; 
        _hasNext = true;
        final response = await githubRepoRemoteDatasource.getRepositories(page: _currentPage);
        response.fold(
          (error) => emit(_Error(error)),
          (data) {
            _allRepositories = data;
            _hasNext = data.length >= 10;
            emit(_Loaded(data, _hasNext));

            sharedPreferencesManager.setRepositories('repo', data);
          },
        );
      } else {
        List<GitHubRepository>? cachedData = sharedPreferencesManager.getRepositories('repo');
        if (cachedData != null && cachedData.isNotEmpty) {
          _allRepositories = cachedData;
          emit(_Loaded(cachedData, false));
        } else {
          emit(const _Error("No internet connection"));
        }
      }
    });

    on<_LoadMore>((event, emit) async {
      if (!_hasNext) return;
      if (await checkConnectivity()) {
        _currentPage++;
        final response = await githubRepoRemoteDatasource.getRepositories(page: _currentPage);
        response.fold(
          (error) => emit(_Error(error)),
          (data) {
            _allRepositories.addAll(data);
            _hasNext = data.length >= 10;
            final currentState = state;
            if (currentState is _Loaded) {
              final updatedRepositories = [...currentState.repositories, ...data];
              emit(_Loaded(updatedRepositories, _hasNext));

              sharedPreferencesManager.setRepositories('repo', updatedRepositories);
            } else {
              emit(_Loaded(data, _hasNext));
            }
          },
        );
      } else {
        List<GitHubRepository>? cachedData = sharedPreferencesManager.getRepositories('repo');
        if (cachedData != null && cachedData.isNotEmpty) {
          _allRepositories = cachedData;
          emit(_Loaded(cachedData, false));
        } else {
          emit(const _Error("No internet connection"));
        }
      }
    });

    on<_Filter>((event, emit) async {
      if (await checkConnectivity()) {
        if (state is _Loaded) {
          List<GitHubRepository> filteredData = [];
          switch (event.filter) {
            case Filter.stars:
              filteredData = [..._allRepositories]
                ..sort((a, b) => b.stargazersCount!.compareTo(a.stargazersCount!));
              break;
            case Filter.name:
              filteredData = [..._allRepositories]
                ..sort((a, b) => a.name!.compareTo(b.name!));
              break;
          }
          emit(_Loaded(filteredData, _hasNext));
        } 
      } else {
        emit(const _Error("No internet connection"));
      }
    });
  }

  Future<bool> checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }
}
