import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:familiarise_mobile/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Initialize services
  // await Firebase.initializeApp();
  // await Supabase.initialize(
  //   url: EnvConfig.supabaseUrl,
  //   anonKey: EnvConfig.supabaseAnonKey,
  // );
  // await Hive.initFlutter();

  runApp(
    const ProviderScope(
      child: FamiliariseApp(),
    ),
  );
}
