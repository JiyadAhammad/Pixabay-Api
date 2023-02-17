import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack/provider/notify.dart';
import 'screen/provider_example.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //! better comments
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderClass>(
          create: (_) => ProviderClass(),
        ),
        ChangeNotifierProvider<FavProvider>(
          create: (_) => FavProvider(),
        ),
        ChangeNotifierProvider<BoolProvider>(
          create: (_) => BoolProvider(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pixabay api',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.green,
            ),
            // scaffoldBackgroundColor: Colors.black,
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
              bodyText1: TextStyle(
                color: Colors.black,
              ),
              bodyText2: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          home: ProviderExample(),
        );
      },
    );
  }
}
