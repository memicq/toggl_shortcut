import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/view_models/view_model.dart';
import 'package:toggl_shortcut/views/screens/loading_screen/loading_data.dart';

@injectable
class LoadingViewModel extends ViewModel<LoadingData> {
  LoadingViewModel() : super(LoadingData.initial());
}
