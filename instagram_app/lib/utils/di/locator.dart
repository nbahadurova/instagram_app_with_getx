import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instagram_app/data/repositories/post_repo.dart';
import 'package:instagram_app/data/repositories/login_repo.dart';
import 'package:instagram_app/data/contracts/post_contract.dart';
import 'package:instagram_app/data/contracts/login_contract.dart';
import 'package:instagram_app/data/repositories/comment_repo.dart';
import 'package:instagram_app/data/repositories/favorite_repo.dart';
import 'package:instagram_app/data/contracts/comment_contract.dart';
import 'package:instagram_app/data/contracts/favorite_contract.dart';
import 'package:instagram_app/data/services/remote/post_service.dart';
import 'package:instagram_app/data/services/remote/login_service.dart';
import 'package:instagram_app/data/repositories/show_comments_repo.dart';
import 'package:instagram_app/data/services/remote/comment_service.dart';
import 'package:instagram_app/data/services/remote/favorite_service.dart';
import 'package:instagram_app/data/contracts/show_comments_contract.dart';
import 'package:instagram_app/data/services/local/login_local_service.dart';
import 'package:instagram_app/data/services/local/comment_local_service.dart';
import 'package:instagram_app/data/services/remote/show_comments_service.dart';
import 'package:instagram_app/utils/controllers/show_comments_controller.dart';

final GetIt locator = GetIt.instance;
Future<void> init() async {
  await Hive.initFlutter();
}

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => LoginService());
  locator.registerLazySingleton<LoginContract>(() => LoginRepo(locator()));
  final Box<String> loginBox = await Hive.openBox('loginBox');

  final Box<String> commentBox = await Hive.openBox('commentBox');
  locator.registerLazySingleton<CommentLocalService>(
      () => CommentLocalService(commentBox));
  locator
      .registerLazySingleton<LoginLocalService>(() => LoginLocalService(loginBox));

   locator.registerLazySingleton(() => PostService());
  locator.registerLazySingleton<PostContract>(
      () => PostRepo(locator()));

        locator.registerLazySingleton(() => ShowCommentsService());
  locator.registerLazySingleton<ShowCommentsContract>(() => ShowCommentsRepo(locator()));
   locator.registerSingleton(ShowCommentsController(locator()));

    locator.registerLazySingleton(() => CommentService());
  locator.registerLazySingleton<CommentContract>(() => CommentRepo(locator()));

  
  locator.registerLazySingleton(() => FavoriteService());
  locator.registerLazySingleton<FavoriteContract>(() => FavoriteRepo(locator()));
        
}
