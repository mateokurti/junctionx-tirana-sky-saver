//Generated code

part of 'schema.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$Schema extends Schema {
  _$Schema([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Schema;

  @override
  Future<Response<PaginatedArticleList>> _apiArticlesGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/articles/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PaginatedArticleList, PaginatedArticleList>($request);
  }

  @override
  Future<Response<Article>> _apiArticlesPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required ArticleRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/articles/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Article, Article>($request);
  }

  @override
  Future<Response<Article>> _apiArticlesIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/articles/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Article, Article>($request);
  }

  @override
  Future<Response<Article>> _apiArticlesIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required ArticleRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/articles/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Article, Article>($request);
  }

  @override
  Future<Response<Article>> _apiArticlesIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required PatchedArticleRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/articles/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Article, Article>($request);
  }

  @override
  Future<Response<dynamic>> _apiArticlesIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/articles/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Article>> _apiArticlesIdMarkReadPost({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required ArticleRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/articles/${id}/mark_read/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Article, Article>($request);
  }

  @override
  Future<Response<PaginatedBadgeList>> _apiBadgesGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/badges/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PaginatedBadgeList, PaginatedBadgeList>($request);
  }

  @override
  Future<Response<Badge>> _apiBadgesPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required BadgeRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/badges/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Badge, Badge>($request);
  }

  @override
  Future<Response<Badge>> _apiBadgesIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/badges/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Badge, Badge>($request);
  }

  @override
  Future<Response<Badge>> _apiBadgesIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required BadgeRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/badges/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Badge, Badge>($request);
  }

  @override
  Future<Response<Badge>> _apiBadgesIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required PatchedBadgeRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/badges/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Badge, Badge>($request);
  }

  @override
  Future<Response<dynamic>> _apiBadgesIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/badges/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PaginatedBookingList>> _apiBookingsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/bookings/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PaginatedBookingList, PaginatedBookingList>($request);
  }

  @override
  Future<Response<Booking>> _apiBookingsPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required BookingRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/bookings/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _apiBookingsBookingReferenceGet({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/bookings/${bookingReference}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _apiBookingsBookingReferencePut({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    String? cacheControl,
    required BookingRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/bookings/${bookingReference}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<Booking>> _apiBookingsBookingReferencePatch({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    String? cacheControl,
    required PatchedBookingRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/bookings/${bookingReference}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Booking, Booking>($request);
  }

  @override
  Future<Response<dynamic>> _apiBookingsBookingReferenceDelete({
    String? acceptLanguage,
    String? authorization,
    required String? bookingReference,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/bookings/${bookingReference}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PaginatedBookedSegmentsList>> _apiFlightsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/flights/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PaginatedBookedSegmentsList,
        PaginatedBookedSegmentsList>($request);
  }

  @override
  Future<Response<BookedSegments>> _apiFlightsPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required BookedSegmentsRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/flights/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BookedSegments, BookedSegments>($request);
  }

  @override
  Future<Response<BookedSegments>> _apiFlightsIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/flights/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BookedSegments, BookedSegments>($request);
  }

  @override
  Future<Response<BookedSegments>> _apiFlightsIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required BookedSegmentsRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/flights/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BookedSegments, BookedSegments>($request);
  }

  @override
  Future<Response<BookedSegments>> _apiFlightsIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required PatchedBookedSegmentsRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/flights/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<BookedSegments, BookedSegments>($request);
  }

  @override
  Future<Response<dynamic>> _apiFlightsIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/flights/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PaginatedRewardList>> _apiRewardsGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/rewards/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PaginatedRewardList, PaginatedRewardList>($request);
  }

  @override
  Future<Response<Reward>> _apiRewardsPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required RewardRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/rewards/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Reward, Reward>($request);
  }

  @override
  Future<Response<Reward>> _apiRewardsIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/rewards/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Reward, Reward>($request);
  }

  @override
  Future<Response<Reward>> _apiRewardsIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required RewardRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/rewards/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Reward, Reward>($request);
  }

  @override
  Future<Response<Reward>> _apiRewardsIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required PatchedRewardRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/rewards/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Reward, Reward>($request);
  }

  @override
  Future<Response<dynamic>> _apiRewardsIdDelete({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/rewards/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PaginatedUserAccountList>> _apiUsersGet({
    String? acceptLanguage,
    String? authorization,
    int? page,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/users/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<PaginatedUserAccountList, PaginatedUserAccountList>($request);
  }

  @override
  Future<Response<UserAccount>> _apiUsersIdGet({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/users/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UserAccount, UserAccount>($request);
  }

  @override
  Future<Response<UserAccount>> _apiUsersIdPut({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required UserAccountRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UserAccount, UserAccount>($request);
  }

  @override
  Future<Response<UserAccount>> _apiUsersIdPatch({
    String? acceptLanguage,
    String? authorization,
    required int? id,
    String? cacheControl,
    required PatchedUserAccountRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${id}/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<UserAccount, UserAccount>($request);
  }

  @override
  Future<Response<UserAccount>> _apiUsersMeGet({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/api/users/me/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UserAccount, UserAccount>($request);
  }

  @override
  Future<Response<AuthToken>> _authTokenPost({
    String? acceptLanguage,
    String? authorization,
    String? cacheControl,
    required AuthTokenRequest? body,
  }) {
    final Uri $url = Uri.parse('/auth-token/');
    final Map<String, String> $headers = {
      if (acceptLanguage != null) 'accept-language': acceptLanguage,
      if (authorization != null) 'authorization': authorization,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<AuthToken, AuthToken>($request);
  }
}
