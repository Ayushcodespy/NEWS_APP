import 'package:bnews/res/consts/consts.dart';
import 'package:bnews/res/routes/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appmname,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        scaffoldBackgroundColor: AppColors.background,
        iconTheme: const IconThemeData(
          color: AppColors.icon,
        )
      ),
      getPages: AppRouts.getRoutes(),
    );
  }
}