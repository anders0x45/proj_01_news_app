import '../../../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repository/article_repository.dart';

class RemoveSavedArticleUseCase implements UseCase<void, AritcleEntity> {
  final ArticleRepository _articleRepository;

  RemoveSavedArticleUseCase(this._articleRepository);
  @override
  Future<void> call({AritcleEntity? params}) {
    return _articleRepository.removeArticle(params!);
  }
}
