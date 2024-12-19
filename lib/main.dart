import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_app/firebase_options.dart';

import 'package:flutter_web_app/portfolio_screen.dart';
import 'package:flutter_web_app/repository/portfolio_repository.dart';

import 'bloc/portfolio_bloc.dart';
import 'constant/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await dotenv.load(fileName: ".env"); // Load environment variables
  } catch (e) {
    throw Exception('Error loading .env file: $e'); // Print error if any
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(BlocProvider(
    create: (context) => PortfolioBloc(PortfolioRepository()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rohit Portfolio',
      theme: AppTheme.appTheme(context),
      builder: (context, child) {
        return const PortfolioScreen();
      },
    );
  }
}
