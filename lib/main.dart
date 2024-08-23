import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petprofile_fe/core/core.dart';
import 'package:petprofile_fe/data/datasources/local/shared_preference_manager.dart';
import 'package:petprofile_fe/data/datasources/remote/github_repository_remote_datasource.dart';
import 'package:petprofile_fe/presentation/detail/bloc/detail_bloc.dart';
import 'package:petprofile_fe/presentation/home/bloc/home_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sfManager = await SharedPreferencesManager.getInstance();

  runApp(MyApp(sfManager: sfManager));
}

class MyApp extends StatelessWidget {
  final SharedPreferencesManager sfManager;
  const MyApp({super.key, required this.sfManager});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(
            GitHubRepositoryRemoteDatasource(),
            sfManager
          ),
        ),
        BlocProvider(
          create: (context) => DetailBloc(
            GitHubRepositoryRemoteDatasource(),
            sfManager
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Flutter GitHub Trends',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          dialogTheme: const DialogTheme(elevation: 0),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0.5,
            titleTextStyle: GoogleFonts.inter(
              color: AppColors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}