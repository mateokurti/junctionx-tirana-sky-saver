import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:skysaver/api/schema.swagger.dart';
import 'package:skysaver/utils/request_interceptors.dart';

final _interceptors = [
  HttpLoggingInterceptor(),
  CustomRequestInterceptor(),
  // CustomResponseInterceptor(),
];

final _authenticator = CustomAuthenticator();

Schema setClient([String? url]) {
  final baseUri = Uri.parse(
    url ??
        (true
            ? 'http://192.168.2.162:8000'
            : 'https://byte-busters-junctionx.serveo.net'),
  );
  return Schema.create(
    baseUrl: baseUri,
    client: ChopperClient(
      converter: $JsonSerializableConverter(),
      baseUrl: baseUri,
    ),
    interceptors: _interceptors,
    authenticator: _authenticator,
  );
}

Schema apiClient = setClient('http://192.168.2.162:8000');
