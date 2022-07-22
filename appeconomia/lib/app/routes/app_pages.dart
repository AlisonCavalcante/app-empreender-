import 'package:appeconomia/app/bindings/login_binding.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:appeconomia/app/ui/canais_propaganda_page.dart';
import 'package:appeconomia/app/ui/financas_page.dart';
import 'package:appeconomia/app/ui/home_page.dart';
import 'package:appeconomia/app/ui/info_pages.dart';
import 'package:appeconomia/app/ui/login_page.dart';
import 'package:appeconomia/app/ui/marketplace_page.dart';
import 'package:appeconomia/app/ui/metas_page.dart';
import 'package:appeconomia/app/ui/produtos.page.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(
      name: Routes.INFOPAGES,
      page: () => InfoPages(),
    ),
    GetPage(
      name: Routes.METASPAGE,
      page: () => MetasPage(),
    ),
    GetPage(
      name: Routes.PRODUTOPAGE,
      page: () => ProdutoPage(),
    ),
    GetPage(
      name: Routes.PROPRAGANDAPAGE,
      page: () => PropagandaPage(),
    ),
    GetPage(
      name: Routes.FINANCASPAGE,
      page: () => FinancasPage(),
    ),
    GetPage(
      name: Routes.MARKETPLACEPAGE,
      page: () => MarketplacePage(),
    ),
  ];
}
