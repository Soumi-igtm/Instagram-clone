import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';
import 'package:instagram_clone/utils/colors.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDirRwn7hj639jByVm72bDu1LOgiCal09I",
          appId: "1:1014644954028:web:f101236ef72da639706009",
          messagingSenderId: "1014644954028",
          projectId: "instagram-clone-f8e71",
          storageBucket:"instagram-clone-f8e71.appspot.com"
      ),
    );
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
      //home: ResponsiveLayout(
          //webScreenLayout:  WebScreenLayout() ,
      // mobileScreenLayout: MobileScreenLayout()),
      home: SignUpScreen(),
    );
  }
}

