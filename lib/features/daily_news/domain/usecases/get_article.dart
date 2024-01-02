import 'package:proj_1_news/core/resources/data_state.dart';
import 'package:proj_1_news/core/usecases/usecase.dart';
import 'package:proj_1_news/features/daily_news/domain/entities/article.dart';
import 'package:proj_1_news/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<AritcleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<AritcleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticle();
  }
}
