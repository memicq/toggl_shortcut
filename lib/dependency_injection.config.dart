// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'repositories/toggl_repository.dart' as _i6;
import 'view_models/view_model_factory.dart' as _i7;
import 'views/screens/home_screen/home_view_model.dart' as _i3;
import 'views/screens/loading_screen/loading_view_model.dart' as _i4;
import 'views/screens/template_addition/template_addition_view_model.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HomeViewModel>(() => _i3.HomeViewModel());
  gh.factory<_i4.LoadingViewModel>(() => _i4.LoadingViewModel());
  gh.factory<_i5.TemplateAdditionViewModel>(
      () => _i5.TemplateAdditionViewModel());
  gh.singleton<_i6.TogglRepository>(_i6.TogglRepository());
  gh.singleton<_i7.ViewModelFactory>(_i7.ViewModelFactoryImpl());
  return get;
}
