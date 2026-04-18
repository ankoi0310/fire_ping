import 'package:fire_ping/config/router/app_router.dart';
import 'package:fire_ping/core/blocs/session/session_cubit.dart';
import 'package:fire_ping/core/shared/constants/app_constants.dart';
import 'package:fire_ping/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  await Supabase.initialize(
    url: AppConstants.supabaseUrl,
    anonKey: AppConstants.supabasePublishableKey,
  );

  await initInjection();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<SessionCubit>()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Fire Ping',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: routerConfig,
    );
  }
}
