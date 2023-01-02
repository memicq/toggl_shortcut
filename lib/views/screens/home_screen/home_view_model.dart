import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/view_models/view_model.dart';
import 'package:toggl_shortcut/views/screens/home_screen/home_data.dart';

@injectable
class HomeViewModel extends ViewModel<HomeData> {
  HomeViewModel() : super(HomeData.initial());
}
