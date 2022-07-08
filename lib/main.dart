import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/consts/theme_data.dart';
import 'package:shopapp/provider/dark_theme_provider.dart';

import 'Views/SplashScreen.dart';
import 'Views/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeprovider themeChangeProvider = DarkThemeprovider();

  void getCurrentAppTheme()async{
    themeChangeProvider.setDarkTheme = await themeChangeProvider.darkThemepref.getTheme();
  }

  void initState(){
    //TODO: implement iniState
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    bool isDark = true;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeprovider>(builder: (context, themeProvider, child){

          return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(themeProvider.getDarkTheme, context),
          home: SplashScreen()
          );
    }));
  }
}
