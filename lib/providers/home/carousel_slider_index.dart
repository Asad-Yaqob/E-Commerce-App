import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarouselSliderIndexNotifier extends StateNotifier<int> {
  CarouselSliderIndexNotifier() : super(0);

  void updateIndex(int index) {
    state = index;
  }

  void resetIndex(){
    state = 0;
  }
  
}

final carouselIndexProvider =
    StateNotifierProvider<CarouselSliderIndexNotifier, int>((ref) {
  return CarouselSliderIndexNotifier();
});
