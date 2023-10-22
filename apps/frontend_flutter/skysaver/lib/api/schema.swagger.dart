// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'schema.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'schema.enums.swagger.dart' as enums;
export 'schema.enums.swagger.dart';
export 'schema.models.swagger.dart';

part 'schema.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Schema extends ChopperService {
  static Schema create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Schema(client);
    }

    final newClient = ChopperClient(
        services: [_$Schema()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Schema(newClient);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedArticleList?>> apiArticlesGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        PaginatedArticleList, () => PaginatedArticleList.fromJsonFactory);

    return _apiArticlesGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/articles/')
  Future<chopper.Response<PaginatedArticleList?>> _apiArticlesGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Article?>> apiArticlesPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required ArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Article, () => Article.fromJsonFactory);

    return _apiArticlesPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/articles/',
    optionalBody: true,
  )
  Future<chopper.Response<Article?>> _apiArticlesPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required ArticleRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Article?>> apiArticlesIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Article, () => Article.fromJsonFactory);

    return _apiArticlesIdGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/articles/{id}/')
  Future<chopper.Response<Article?>> _apiArticlesIdGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Article?>> apiArticlesIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required ArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Article, () => Article.fromJsonFactory);

    return _apiArticlesIdPut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/articles/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Article?>> _apiArticlesIdPut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required ArticleRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Article?>> apiArticlesIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required PatchedArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Article, () => Article.fromJsonFactory);

    return _apiArticlesIdPatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/articles/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Article?>> _apiArticlesIdPatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedArticleRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response> apiArticlesIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    return _apiArticlesIdDelete(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  @Delete(path: '/api/articles/{id}/')
  Future<chopper.Response> _apiArticlesIdDelete({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Article?>> apiArticlesIdMarkReadPost({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required ArticleRequest? body,
  }) {
    generatedMapping.putIfAbsent(Article, () => Article.fromJsonFactory);

    return _apiArticlesIdMarkReadPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this article.
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/articles/{id}/mark_read/',
    optionalBody: true,
  )
  Future<chopper.Response<Article?>> _apiArticlesIdMarkReadPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required ArticleRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedBadgeList?>> apiBadgesGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        PaginatedBadgeList, () => PaginatedBadgeList.fromJsonFactory);

    return _apiBadgesGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/badges/')
  Future<chopper.Response<PaginatedBadgeList?>> _apiBadgesGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Badge?>> apiBadgesPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required BadgeRequest? body,
  }) {
    generatedMapping.putIfAbsent(Badge, () => Badge.fromJsonFactory);

    return _apiBadgesPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/badges/',
    optionalBody: true,
  )
  Future<chopper.Response<Badge?>> _apiBadgesPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BadgeRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Badge?>> apiBadgesIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Badge, () => Badge.fromJsonFactory);

    return _apiBadgesIdGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/badges/{id}/')
  Future<chopper.Response<Badge?>> _apiBadgesIdGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Badge?>> apiBadgesIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required BadgeRequest? body,
  }) {
    generatedMapping.putIfAbsent(Badge, () => Badge.fromJsonFactory);

    return _apiBadgesIdPut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/badges/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Badge?>> _apiBadgesIdPut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BadgeRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Badge?>> apiBadgesIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required PatchedBadgeRequest? body,
  }) {
    generatedMapping.putIfAbsent(Badge, () => Badge.fromJsonFactory);

    return _apiBadgesIdPatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/badges/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Badge?>> _apiBadgesIdPatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedBadgeRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response> apiBadgesIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    return _apiBadgesIdDelete(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this badge.
  ///@param jwt-auth-cookie User authorization cookie
  @Delete(path: '/api/badges/{id}/')
  Future<chopper.Response> _apiBadgesIdDelete({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedBookingList?>> apiBookingsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        PaginatedBookingList, () => PaginatedBookingList.fromJsonFactory);

    return _apiBookingsGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/bookings/')
  Future<chopper.Response<PaginatedBookingList?>> _apiBookingsGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Booking?>> apiBookingsPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required BookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _apiBookingsPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/bookings/',
    optionalBody: true,
  )
  Future<chopper.Response<Booking?>> _apiBookingsPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BookingRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Booking?>> apiBookingsBookingReferenceGet({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _apiBookingsBookingReferenceGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        bookingReference: bookingReference,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/bookings/{booking_reference}/')
  Future<chopper.Response<Booking?>> _apiBookingsBookingReferenceGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('booking_reference') required String? bookingReference,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Booking?>> apiBookingsBookingReferencePut({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    dynamic cacheControl,
    required BookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _apiBookingsBookingReferencePut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        bookingReference: bookingReference,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/bookings/{booking_reference}/',
    optionalBody: true,
  )
  Future<chopper.Response<Booking?>> _apiBookingsBookingReferencePut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('booking_reference') required String? bookingReference,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BookingRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Booking?>> apiBookingsBookingReferencePatch({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    dynamic cacheControl,
    required PatchedBookingRequest? body,
  }) {
    generatedMapping.putIfAbsent(Booking, () => Booking.fromJsonFactory);

    return _apiBookingsBookingReferencePatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        bookingReference: bookingReference,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/bookings/{booking_reference}/',
    optionalBody: true,
  )
  Future<chopper.Response<Booking?>> _apiBookingsBookingReferencePatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('booking_reference') required String? bookingReference,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedBookingRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response> apiBookingsBookingReferenceDelete({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    dynamic cacheControl,
  }) {
    return _apiBookingsBookingReferenceDelete(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        bookingReference: bookingReference,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param booking_reference A unique value identifying this booking.
  ///@param jwt-auth-cookie User authorization cookie
  @Delete(path: '/api/bookings/{booking_reference}/')
  Future<chopper.Response> _apiBookingsBookingReferenceDelete({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('booking_reference') required String? bookingReference,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedBookedSegmentsList?>> apiFlightsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(PaginatedBookedSegmentsList,
        () => PaginatedBookedSegmentsList.fromJsonFactory);

    return _apiFlightsGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/flights/')
  Future<chopper.Response<PaginatedBookedSegmentsList?>> _apiFlightsGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<BookedSegments?>> apiFlightsPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required BookedSegmentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        BookedSegments, () => BookedSegments.fromJsonFactory);

    return _apiFlightsPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/flights/',
    optionalBody: true,
  )
  Future<chopper.Response<BookedSegments?>> _apiFlightsPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BookedSegmentsRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<BookedSegments?>> apiFlightsIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        BookedSegments, () => BookedSegments.fromJsonFactory);

    return _apiFlightsIdGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/flights/{id}/')
  Future<chopper.Response<BookedSegments?>> _apiFlightsIdGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<BookedSegments?>> apiFlightsIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required BookedSegmentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        BookedSegments, () => BookedSegments.fromJsonFactory);

    return _apiFlightsIdPut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/flights/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<BookedSegments?>> _apiFlightsIdPut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BookedSegmentsRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<BookedSegments?>> apiFlightsIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required PatchedBookedSegmentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        BookedSegments, () => BookedSegments.fromJsonFactory);

    return _apiFlightsIdPatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/flights/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<BookedSegments?>> _apiFlightsIdPatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedBookedSegmentsRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response> apiFlightsIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    return _apiFlightsIdDelete(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this booked segment.
  ///@param jwt-auth-cookie User authorization cookie
  @Delete(path: '/api/flights/{id}/')
  Future<chopper.Response> _apiFlightsIdDelete({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedRewardList?>> apiRewardsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        PaginatedRewardList, () => PaginatedRewardList.fromJsonFactory);

    return _apiRewardsGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/rewards/')
  Future<chopper.Response<PaginatedRewardList?>> _apiRewardsGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Reward?>> apiRewardsPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required RewardRequest? body,
  }) {
    generatedMapping.putIfAbsent(Reward, () => Reward.fromJsonFactory);

    return _apiRewardsPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/api/rewards/',
    optionalBody: true,
  )
  Future<chopper.Response<Reward?>> _apiRewardsPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required RewardRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Reward?>> apiRewardsIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(Reward, () => Reward.fromJsonFactory);

    return _apiRewardsIdGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/rewards/{id}/')
  Future<chopper.Response<Reward?>> _apiRewardsIdGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Reward?>> apiRewardsIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required RewardRequest? body,
  }) {
    generatedMapping.putIfAbsent(Reward, () => Reward.fromJsonFactory);

    return _apiRewardsIdPut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/rewards/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Reward?>> _apiRewardsIdPut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required RewardRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<Reward?>> apiRewardsIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required PatchedRewardRequest? body,
  }) {
    generatedMapping.putIfAbsent(Reward, () => Reward.fromJsonFactory);

    return _apiRewardsIdPatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/rewards/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<Reward?>> _apiRewardsIdPatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedRewardRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response> apiRewardsIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    return _apiRewardsIdDelete(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this reward.
  ///@param jwt-auth-cookie User authorization cookie
  @Delete(path: '/api/rewards/{id}/')
  Future<chopper.Response> _apiRewardsIdDelete({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  Future<chopper.Response<PaginatedUserAccountList?>> apiUsersGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(PaginatedUserAccountList,
        () => PaginatedUserAccountList.fromJsonFactory);

    return _apiUsersGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        page: page,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  ///@param page A page number within the paginated result set.
  @Get(path: '/api/users/')
  Future<chopper.Response<PaginatedUserAccountList?>> _apiUsersGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Query('page') int? page,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<UserAccount?>> apiUsersIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        UserAccount, () => UserAccount.fromJsonFactory);

    return _apiUsersIdGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/users/{id}/')
  Future<chopper.Response<UserAccount?>> _apiUsersIdGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<UserAccount?>> apiUsersIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required UserAccountRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        UserAccount, () => UserAccount.fromJsonFactory);

    return _apiUsersIdPut(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  @Put(
    path: '/api/users/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<UserAccount?>> _apiUsersIdPut({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required UserAccountRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<UserAccount?>> apiUsersIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    dynamic cacheControl,
    required PatchedUserAccountRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        UserAccount, () => UserAccount.fromJsonFactory);

    return _apiUsersIdPatch(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        id: id,
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param id A unique integer value identifying this user.
  ///@param jwt-auth-cookie User authorization cookie
  @Patch(
    path: '/api/users/{id}/',
    optionalBody: true,
  )
  Future<chopper.Response<UserAccount?>> _apiUsersIdPatch({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Path('id') required int? id,
    @Header('Cache-Control') String? cacheControl,
    @Body() required PatchedUserAccountRequest? body,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<UserAccount?>> apiUsersMeGet({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
  }) {
    generatedMapping.putIfAbsent(
        UserAccount, () => UserAccount.fromJsonFactory);

    return _apiUsersMeGet(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString());
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Get(path: '/api/users/me/')
  Future<chopper.Response<UserAccount?>> _apiUsersMeGet({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
  });

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  Future<chopper.Response<AuthToken?>> authTokenPost({
    String? acceptLanguage,
    String? authorization,
    dynamic cacheControl,
    required AuthTokenRequest? body,
  }) {
    generatedMapping.putIfAbsent(AuthToken, () => AuthToken.fromJsonFactory);

    return _authTokenPost(
        acceptLanguage: acceptLanguage?.toString(),
        authorization: authorization?.toString(),
        cacheControl: cacheControl?.toString(),
        body: body);
  }

  ///
  ///@param accept-language `sq` or `en`. The default value is en
  ///@param authorization User authorization token
  ///@param jwt-auth-cookie User authorization cookie
  @Post(
    path: '/auth-token/',
    optionalBody: true,
  )
  Future<chopper.Response<AuthToken?>> _authTokenPost({
    @Header('accept-language') String? acceptLanguage,
    @Header('authorization') String? authorization,
    @Header('Cache-Control') String? cacheControl,
    @Body() required AuthTokenRequest? body,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
