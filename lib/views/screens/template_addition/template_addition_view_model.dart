import 'package:injectable/injectable.dart';
import 'package:toggl_shortcut/view_models/view_model.dart';
import 'package:toggl_shortcut/views/screens/template_addition/template_addition_data.dart';

@injectable
class TemplateAdditionViewModel extends ViewModel<TemplateAdditionData> {
  TemplateAdditionViewModel() : super(TemplateAdditionData.initial());
}
