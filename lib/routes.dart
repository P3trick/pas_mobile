import 'package:get/get.dart';
import 'package:pas_mobile/pages/login_page.dart';
import 'package:pas_mobile/pages/main_menu_page.dart';
import 'package:pas_mobile/pages/detail_makanan_page.dart';

class Routes {
  static const String login = '/login';
  static const String mainmenu = '/mainmenu';
  static const String detailmakanan = '/detailmakanan';

  static final myPages = [
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: mainmenu, page: () => MainMenuPage()),
    GetPage(name: detailmakanan, page: () => DetailMakananPage()),
  ];
}
