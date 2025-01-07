import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Category {
  Category({
    required this.categoryName,
    String? id,
  }) : categoryId = id ?? uuid.v4();

  final String categoryId;
  final String categoryName;
}
