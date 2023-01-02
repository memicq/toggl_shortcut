import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/dependency_injection.config.dart';

final getIt = GetIt.I;

@InjectableInit()
void initializeGetIt() => $initGetIt(getIt);
