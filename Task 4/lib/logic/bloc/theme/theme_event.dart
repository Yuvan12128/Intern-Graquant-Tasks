part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeInitialEvent extends ThemeEvent {}

class ThemeToggleEvent extends ThemeEvent {
  final ThemeMode? themeMode;
  ThemeToggleEvent({this.themeMode});
  @override
  List<Object?> get props => [themeMode];
}
