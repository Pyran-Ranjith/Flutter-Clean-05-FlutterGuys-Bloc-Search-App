part of 'search_bloc.dart';

// @immutable
// sealed class SearchState {}

// final class SearchInitial extends SearchState {}

abstract class SearchState {}

class InitialState extends SearchState {}

class LoadingState extends SearchState {}

class LoadWords extends SearchState {
  final List<String> words;

  LoadWords({required this.words});
}
