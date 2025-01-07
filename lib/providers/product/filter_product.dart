import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/data/sample_data.dart';
import 'package:capjewel/models/product.dart';

class FilterProductNotifer extends StateNotifier<List<Product>> {
  FilterProductNotifer() : super(sampleProducts);

  void filterByCategory(String categoryId) {
    final products = sampleProducts;

    if (categoryId == 'all') {
      state = products;
      return;
    }

    state =
        products.where((product) => product.categoryId == categoryId).toList();
  }
}

final filterProductsProvider =
    StateNotifierProvider<FilterProductNotifer, List<Product>>((ref) {
  return FilterProductNotifer();
});


class ActiveCategoryNotifier extends StateNotifier<int> {
  ActiveCategoryNotifier() : super(0);

  void setActiveCategory(int index) {
    state = index;
  }

}

final activeCategoryProvider = StateNotifierProvider<ActiveCategoryNotifier, int>((ref){
  return ActiveCategoryNotifier();
});