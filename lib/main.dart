import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_flutter/screen/signup_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagram_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/web_screen_layout.dart';
import 'package:instagram_flutter/screen/login_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyB4TNyUrt6r13zo9tvgkLdnSgy4cLo08x4',
        appId: '1:395463233862:wxeb:7bca0d9d091029ab17d547',
        messagingSenderId: '395463233862',
        projectId: 'instagram-clone-9ea0c',
        storageBucket: 'instagram-clone-9ea0c.appspot.com',
      ),
    );
  } else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: const ResponsiveLayout(
        //webScreenLayout: WebScreenLayout(),
        //mobileScreenLayout: MobileScreenLayout(),
      //),
      home: const LoginScreen(),
    );
  }
}
