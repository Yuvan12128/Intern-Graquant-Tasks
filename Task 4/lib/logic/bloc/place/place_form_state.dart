part of 'place_form_bloc.dart';

class PlaceFormState {
  final bool placeLoading;
  final List<SearchDelegateModel>? placeDelegates;
  final Object? error;

  PlaceFormState({
    this.placeLoading = false,
    this.placeDelegates,
    this.error,
  });

  PlaceFormState copyWith({
    bool? placeLoading,
    List<SearchDelegateModel>? placeDelegates,
    Object? error,
  }) {
    return PlaceFormState(
      placeLoading: placeLoading ?? this.placeLoading,
      placeDelegates: placeDelegates ?? this.placeDelegates,
      error: error ?? null,
    );
  }
}
