import 'package:teslo_shop/features/auth/domain/entities/user.dart';

// enum Gender { men, women, kid }

class Product {
  final String id;
  final String title;
  final double price;
  final String description;
  final String slug;
  final int stock;
  final List<String> sizes;
  final String gender;
  final List<String> tags;
  final User? user;
  final List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.slug,
    required this.stock,
    required this.sizes,
    required this.gender,
    required this.tags,
    required this.images,
    this.user,
  });

  Product copyWith({
    String? id,
    String? title,
    double? price,
    String? description,
    String? slug,
    int? stock,
    List<String>? sizes,
    String? gender,
    List<String>? tags,
    User? user,
    List<String>? images,
  }) =>
      Product(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        description: description ?? this.description,
        slug: slug ?? this.slug,
        stock: stock ?? this.stock,
        sizes: sizes ?? this.sizes,
        gender: gender ?? this.gender,
        tags: tags ?? this.tags,
        user: user ?? this.user,
        images: images ?? this.images,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'slug': slug,
        'stock': stock,
        'sizes': sizes,
        'gender': gender,
        'tags': tags,
        'user': user?.toJson(),
        'images': images,
      };

  @override
  String toString() => 'Product{\n'
      'id: $id,\n'
      'title: $title,\n'
      'price: $price,\n'
      'description: $description,\n'
      'slug: $slug,\n'
      'stock: $stock,\n'
      'sizes: $sizes,\n'
      'gender: $gender,\n'
      'tags: $tags,\n'
      'user: $user,\n'
      'images: $images\n'
      '}';
}
