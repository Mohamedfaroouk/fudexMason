import '../../../../core/core_model/app_response.dart';
import '../data_sources/{{variable.snakeCase()}}_data_provider.dart';

class {{variable.pascalCase()}}Repository implements {{variable.pascalCase()}}Interface {
  final {{variable.pascalCase()}}DataProvider {{variable.camelCase()}}DataProvider;

  const {{variable.pascalCase()}}Repository(this.{{variable.camelCase()}}DataProvider);

  @override
  Future<AppResponse> get{{variable.pascalCase()}}(query) {
    return {{variable.camelCase()}}DataProvider.get{{variable.pascalCase()}}(query);
  }
}
