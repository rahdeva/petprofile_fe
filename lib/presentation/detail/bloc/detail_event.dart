part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.started() = _Started;
  const factory DetailEvent.fetch({required String owner, required String repo}) = _Fetch;
}