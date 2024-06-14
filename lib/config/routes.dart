import 'package:flutter/cupertino.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/create_account.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/login.dart';
import 'package:indigenous_plant/features/auth/presentation/screens/verify_email_screen.dart';
import 'package:indigenous_plant/features/navbar/home/home_dart.dart';
import 'package:indigenous_plant/features/navbar/home/search/category_search.dart';
import '../core/screens/error_screen.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CreateAccount.routeName:
        return _cupertinoRoute(const CreateAccount());
      case HomePage.routeName:
        return _cupertinoRoute(
          const HomePage(),
        );
      case LoginScreen.routeName:
        return _cupertinoRoute(
          const LoginScreen(),
        );
      case VerifyEmailScreen.routeName:
        return _cupertinoRoute(
          const VerifyEmailScreen(),
        );
      case CategorySearch.routeName:
        return _cupertinoRoute(
          const CategorySearch(
            categoryName: '',
            imgPath: '',
          ),
        );

      default:
        return _cupertinoRoute(
          ErrorScreen(
            error: 'Wrong Route provided ${settings.name}',
          ),
        );
    }
  }

  static Route _cupertinoRoute(Widget view) => CupertinoPageRoute(
        builder: (_) => view,
      );

  Routes._();
}
