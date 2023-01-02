import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/view_models/view_model.dart';

import '../dependency_injection.dart';

abstract class ViewModelFactory {
  T create<T extends ViewModel>();
}

@Singleton(as: ViewModelFactory)
class ViewModelFactoryImpl implements ViewModelFactory {
  @override
  T create<T extends ViewModel>() => getIt.get<T>();
}
