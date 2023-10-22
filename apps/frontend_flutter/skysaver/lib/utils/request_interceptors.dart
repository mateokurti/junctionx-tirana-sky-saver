import 'dart:async';

import 'package:chopper/chopper.dart';

class CustomRequestInterceptor
    implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    return applyHeader(
      request,
      'Authorization',
      'admin@mateokurti.com',
    );
    if (true) {
    }
    return request;
  }
}

class CustomAuthenticator extends Authenticator {
  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response response, [
    Request? originalRequest,
  ]) async {
    if (response.statusCode == 401) {
      final updatedHeaders = Map<String, String>.of(request.headers);

      if (false) {
      } else {
      }
    }
    return null;
  }
}
