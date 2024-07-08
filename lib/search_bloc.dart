import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   SearchBloc() : super(SearchInitial()) {
//     on<SearchEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(InitialState()) {
    on<SearchWord>((event, emit) {
      List<String> searchedTitles = [];
      for (var element in words) {
        if (element.contains(event.word)) {
          searchedTitles.add(element);
        }
      }

      emit(LoadWords(
        words: searchedTitles
      )
      );

    });
  }

  List<String> words = [
    'Fluter',
    'Google',
    'Flutter Guys',
    'Tutorial',
    'Bloc cours',
    'State management',
    'Project',
  ];
}
