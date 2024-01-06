import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proj_1_news/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:proj_1_news/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'config/theme/app_theme.dart';
import 'features/daily_news/presentation/pages/home.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        home: const DailyNews(),
        theme: theme(),
      ),
    );
  }
}
