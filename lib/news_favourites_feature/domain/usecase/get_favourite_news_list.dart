import 'package:news_app/common/domain/no_param.dart';
import 'package:news_app/news_list_feature/domain/model/news_entity.dart';

import '../repository/news_favourite_repository.dart';

class GetFavouriteNewsListUseCase {
  late final NewsFavouriteRepository newsFavouriteRepository;

  GetFavouriteNewsListUseCase({required this.newsFavouriteRepository});

  Future<List<NewsArticleEntity>?> call(NoParams param) async {
    final list = await newsFavouriteRepository.getFavouriteList();
    return list?.toList();
  }
}
