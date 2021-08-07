import '../enums/app_enuns.dart';
import 'response_default.dart';

class BuilderResponse {
  static DefaultResponse failed<T>({T? object, String? message}) {
    return DefaultResponse<T?>(object, message, ResponseStatus.rsFailed);
  }

  static DefaultResponse success<T>({T? object, String? message}) {
    return DefaultResponse<T?>(object, message, ResponseStatus.rsSuccess);
  }
}
