import '../../../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repository/article_repository.dart';

class GetSavedArticleUseCase implements UseCase<List<AritcleEntity>, void> {
  final ArticleRepository _articleRepository;

  GetSavedArticleUseCase(this._articleRepository);
  @override
  Future<List<AritcleEntity>> call({void params}) {
    return _articleRepository.getSavedArticle();
  }
}
