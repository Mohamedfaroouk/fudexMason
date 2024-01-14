import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/notification_model.dart';

part '{{variable.snakeCase()}}_state.dart';

class {{variable.pascalCase()}}Cubit extends Cubit<{{variable.pascalCase()}}State> {
  {{variable.pascalCase()}}Cubit() : super({{variable.pascalCase()}}Initial());

  static {{variable.pascalCase()}}Cubit get(context) => BlocProvider.of(context);

  static final {{variable.pascalCase()}}DataProvider dataProvider =
      {{variable.pascalCase()}}DataProvider();
  static final {{variable.pascalCase()}}Repository repository =
      {{variable.pascalCase()}}Repository(dataProvider);
}
