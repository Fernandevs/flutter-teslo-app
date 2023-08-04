import 'package:teslo_shop/config/config.dart';
import 'package:teslo_shop/features/auth/infrastructure/infrastructure.dart';
import 'package:teslo_shop/features/products/domain/entities/product.dart';

class ProductMapper {
  static fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        title: json['title'],
        price: double.parse(json['price']),
        description: json['description'],
        slug: json['slug'],
        stock: json['stock'],
        sizes: List<String>.from(json['sizes'].map((String size) => size)),
        gender: json['gender'],
        tags: List<String>.from(json['tags'].map((String tag) => tag)),
        images: List<String>.from(json['images'].map(
          (String image) => image.startsWith('http')
              ? image
              : '${Environment.apiUrl}/files/product/$image',
        )),
        user: UserMapper.fromJson(json['user']),
      );
}
