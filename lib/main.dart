import 'package:provider/provider.dart';
import 'package:tourist_buddy/screens/GoogleSignInProvider.dart';
import 'package:tourist_buddy/screens/second_screen.dart';
// import 'package:tourist_buddy/screens/second_screen.dart';

import 'package:tourist_buddy/utlis/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          home: SecondScreen(),
          theme: ThemeData(
            accentColor: Color(0xFFD8ECF1),
            primaryColor: Color(0xFF3EBACE),
            scaffoldBackgroundColor: Color(0xFFF3F5F7),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.splash,
          routes: {MyRoutes.splash: (context) => SecondScreen()},
        ),
      );
}
