import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'appilcation/home_screen/home_screen_bloc.dart';
import 'domain/core/di/injectable.dart';
import 'presentation/constants/colors/colors.dart';
import 'presentation/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<Bloc<dynamic, dynamic>>>[
        BlocProvider<HomeScreenBloc>(
          create: (BuildContext context) => getIt<HomeScreenBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pixabay api',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          scaffoldBackgroundColor: kHomeColor,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: kwhiteText,
            ),
            bodyText2: TextStyle(
              color: kwhiteText,
            ),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
