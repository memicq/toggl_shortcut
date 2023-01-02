import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:toggl_shortcut/view_models/state_data.dart';
import 'package:toggl_shortcut/view_models/view_model.dart';
import 'package:toggl_shortcut/view_models/view_model_factory.dart';

abstract class Screen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Screen() : super();

  @override
  ScreenState createState();
}

abstract class ScreenState<T extends Screen, T2 extends ViewModel<T3>,
    T3 extends StateData> extends State<T> {
  ScreenState();

  late final T2 viewModel;

  Widget buildScreen(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<T2>.value(value: viewModel),
      ],
      builder: (context, _) => buildScreen(context),
    );
  }

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    viewModel = context.read<ViewModelFactory>().create<T2>();
  }

  @override
  @mustCallSuper
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}
