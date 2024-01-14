import 'package:flutter/foundation.dart';
import '../../../../core/config/network_constants.dart';
import '../../../../core/core_model/app_response.dart';
import '../../../../core/helpers/dio_helper.dart';

class {{variable.pascalCase()}}DataProvider {
  Future<AppResponse> get{{variable.pascalCase()}}(query) async {
    debugPrint('QUERY xxxcc: $query', wrapWidth: 1024);
    late final AppResponse response;
    await DioHelper.getData(
      url: NetworkConstants.{{variable.camelCase()}},
      query: query,
    ).then(
      (value) {
        print('VALUE: $value');
        response = AppResponse.fromJson(value.data);
        print('RESPONSE: $response');
        response.meta = value.data;
        print('RESPONSE.META: ${response.meta}');
        response.data = value.data['data'];
        print('RESPONSE.DATA: ${response.data}');
      },
    ).catchError(
      (error) {
        debugPrint('error ================================ ${error?.message}');

        if (error?.response != null) {
          response = AppResponse.withErrorResponse(error.response);
        } else {
          response = AppResponse.withErrorString(error.message);
        }
      },
    );
    return response;
  }
}
