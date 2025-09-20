import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_nav_bar_state.freezed.dart';
@freezed
class BottomNavBarState<T> with _$BottomNavBarState<T> {
  const factory BottomNavBarState.initial() = BottomNavBarInitial;

  const factory BottomNavBarState.changeNav(int index) = BottomNavBarChangeNav;
}
