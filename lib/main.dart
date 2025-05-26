import 'package:assignment_app/firebase_options.dart';
import 'package:assignment_app/providers/bottom_navigation_bar_provider.dart';
import 'package:assignment_app/providers/music_services_provider.dart';
import 'package:assignment_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // for fetching services
        ChangeNotifierProvider(create: (_) => MusicServicesProvider()),

        // for changing index or tab
        ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Color.fromRGBO(24, 23, 28, 1),
        ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
