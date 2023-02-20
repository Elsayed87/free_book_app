import 'package:bookly_app/core/utils/app_color.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_cuibt/cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/newestbookscubit/cubit/newestbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/data/repos/home_repo_impl.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBookCubit>(
          create: (BuildContext context) =>
              FeaturedBookCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
            BlocProvider<NewestbooksCubit>(
          create: (BuildContext context) =>
              NewestbooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColor.kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        // home: const SplashView(),
      ),
    );
  }
}
