part of 'home_bloc.dart';

enum Filter{stars, name}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.fetch() = _Fetch;
  const factory HomeEvent.refresh() = _Refresh;
  const factory HomeEvent.loadMore() = _LoadMore;
  const factory HomeEvent.filter(Filter filter) = _Filter;
}