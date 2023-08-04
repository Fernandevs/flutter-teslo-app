import 'package:dio/dio.dart';
import 'package:teslo_shop/config/config.dart';
import 'package:teslo_shop/features/products/domain/domain.dart'
    show Product, ProductsDatasource;
import 'package:teslo_shop/features/products/infrastructure/mappers/product_mapper.dart';

class ProductsDatasourceImpl extends ProductsDatasource {
  late final Dio dio;
  final String token;

  ProductsDatasourceImpl({
    required this.token,
  }) : dio = Dio(
          BaseOptions(
            baseUrl: Environment.apiUrl,
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

  @override
  Future<Product> createOrUpdateProduct(Map<String, dynamic> productLike) {
    // TODO: implement createOrUpdateProduct
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductById(String id) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProductsByPage({
    int limit = 10,
    int offset = 0,
  }) async {
    // final response = await dio.get<List>('/api/products?limit$limit&offset$offset');
    final List<Product> products = [];
    final response = await dio.get<List>('/api/products', queryParameters: {
      'limit': limit,
      'offset': offset,
    });

    for (final product in response.data ?? []) {
      products.add(ProductMapper.fromJson(product));
    }

    return products;
  }

  @override
  Future<List<Product>> searchProductByTerm(String term) {
    // TODO: implement searchProductByTerm
    throw UnimplementedError();
  }
}
