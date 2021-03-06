import 'package:equatable/equatable.dart';

import 'commerce_image.dart';

class Category extends Equatable {
  final int id;
  final int parentId;
  final String name;
  final String description;
  final CommerceImage image;
  final bool isCategoryContainer;

  Category(
    this.id, {
    int parentId,
    this.name,
    this.description,
    this.image,
    bool isCategoryContainer,
  })  : parentId = parentId ?? 0,
        isCategoryContainer = isCategoryContainer ?? false;

  @override
  List<Object> get props => [id, parentId, name, image, image];

  @override
  bool get stringify => true;
}
