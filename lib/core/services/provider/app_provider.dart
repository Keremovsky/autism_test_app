import 'package:autism_test_app/core/services/cache/cache_service.dart';
import 'package:autism_test_app/core/services/feedback/toast_service.dart';
import 'package:autism_test_app/features/test/controller/test_controller.dart';
import 'package:autism_test_app/router/router.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static final AppProvider _instance = AppProvider._init();
  factory AppProvider() => _instance;

  AppProvider._init();

  List<SingleChildWidget> dependItems = [
    Provider(create: (_) => CacheService()),
    Provider(create: (_) => ToastService()),
    ChangeNotifierProvider(create: (_) => AppRouter()),
    ChangeNotifierProvider(create: (_) => TestController()),
  ];
}
