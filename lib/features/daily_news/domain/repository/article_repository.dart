import '../../../../core/resources/data_state.dart';
import '../entities/article.dart';

abstract class ArticleRepository {
  // API methods
  Future<DataState<List<AritcleEntity>>> getNewsArticle();

  // Database methods
  Future<List<AritcleEntity>> getSavedArticle();

  Future<void> saveArticle(AritcleEntity article);

  Future<void> removeArticle(AritcleEntity article);
}
