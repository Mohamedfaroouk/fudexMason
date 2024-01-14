import '../../../../core/core_model/app_response.dart';

abstract class {{variable.pascalCase()}}Interface {
  Future<AppResponse> get{{variable.pascalCase()}}(query);
}
