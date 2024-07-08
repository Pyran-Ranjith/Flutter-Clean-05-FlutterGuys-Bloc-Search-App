part of 'search_bloc.dart';

// @immutable
// sealed class SearchEvent {}

abstract class SearchEvent {}

class SearchWord extends SearchEvent {
  final String word;

  SearchWord({required this.word});

}
