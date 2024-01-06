import 'dart:io';

import 'package:dio/dio.dart';
import '../data_sources/local/app_database.dart';
import '../../domain/entities/article.dart';
import '../../../../core/constants/strings.dart';
import '../data_sources/remote/news_api_service.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/article_repository.dart';
import '../models/article.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  final AppDatabase _appDatabase;

  ArticleRepositoryImpl(this._newsApiService, this._appDatabase);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticle(
          apiKey: newsApiKey, category: categoryQuery, country: countryQuery);

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<ArticleModel>> getSavedArticle() async {
    return _appDatabase.articleDAO.getArticles();
  }

  @override
  Future<void> removeArticle(AritcleEntity article) {
    return _appDatabase.articleDAO
        .deleteArticle(ArticleModel.fromEntity(article));
  }

  @override
  Future<void> saveArticle(AritcleEntity article) {
    return _appDatabase.articleDAO
        .insertArticle(ArticleModel.fromEntity(article));
  }
}
