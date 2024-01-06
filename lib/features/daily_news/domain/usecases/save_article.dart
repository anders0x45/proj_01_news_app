import '../../../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repository/article_repository.dart';

class SaveSavedArticleUseCase implements UseCase<void, AritcleEntity> {
  final ArticleRepository _articleRepository;

  SaveSavedArticleUseCase(this._articleRepository);
  @override
  Future<void> call({AritcleEntity? params}) {
    return _articleRepository.saveArticle(params!);
  }
}
