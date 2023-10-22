// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'schema.enums.swagger.dart' as enums;

part 'schema.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {
  const Article({
    required this.id,
    required this.interactions,
    required this.title,
    required this.description,
    required this.content,
    this.photo,
    required this.tokens,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  static const toJsonFactory = _$ArticleToJson;
  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'interactions', defaultValue: <UserArticleInteraction>[])
  final List<UserArticleInteraction> interactions;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'tokens')
  final int tokens;
  static const fromJsonFactory = _$ArticleFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Article &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.interactions, interactions) ||
                const DeepCollectionEquality()
                    .equals(other.interactions, interactions)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(interactions) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $ArticleExtension on Article {
  Article copyWith(
      {int? id,
      List<UserArticleInteraction>? interactions,
      String? title,
      String? description,
      String? content,
      String? photo,
      int? tokens}) {
    return Article(
        id: id ?? this.id,
        interactions: interactions ?? this.interactions,
        title: title ?? this.title,
        description: description ?? this.description,
        content: content ?? this.content,
        photo: photo ?? this.photo,
        tokens: tokens ?? this.tokens);
  }

  Article copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<List<UserArticleInteraction>>? interactions,
      Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<String>? content,
      Wrapped<String?>? photo,
      Wrapped<int>? tokens}) {
    return Article(
        id: (id != null ? id.value : this.id),
        interactions:
            (interactions != null ? interactions.value : this.interactions),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        content: (content != null ? content.value : this.content),
        photo: (photo != null ? photo.value : this.photo),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class ArticleRequest {
  const ArticleRequest({
    required this.interactions,
    required this.title,
    required this.description,
    required this.content,
    this.photo,
    required this.tokens,
  });

  factory ArticleRequest.fromJson(Map<String, dynamic> json) =>
      _$ArticleRequestFromJson(json);

  static const toJsonFactory = _$ArticleRequestToJson;
  Map<String, dynamic> toJson() => _$ArticleRequestToJson(this);

  @JsonKey(
      name: 'interactions', defaultValue: <UserArticleInteractionRequest>[])
  final List<UserArticleInteractionRequest> interactions;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'tokens')
  final int tokens;
  static const fromJsonFactory = _$ArticleRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ArticleRequest &&
            (identical(other.interactions, interactions) ||
                const DeepCollectionEquality()
                    .equals(other.interactions, interactions)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(interactions) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $ArticleRequestExtension on ArticleRequest {
  ArticleRequest copyWith(
      {List<UserArticleInteractionRequest>? interactions,
      String? title,
      String? description,
      String? content,
      String? photo,
      int? tokens}) {
    return ArticleRequest(
        interactions: interactions ?? this.interactions,
        title: title ?? this.title,
        description: description ?? this.description,
        content: content ?? this.content,
        photo: photo ?? this.photo,
        tokens: tokens ?? this.tokens);
  }

  ArticleRequest copyWithWrapped(
      {Wrapped<List<UserArticleInteractionRequest>>? interactions,
      Wrapped<String>? title,
      Wrapped<String>? description,
      Wrapped<String>? content,
      Wrapped<String?>? photo,
      Wrapped<int>? tokens}) {
    return ArticleRequest(
        interactions:
            (interactions != null ? interactions.value : this.interactions),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        content: (content != null ? content.value : this.content),
        photo: (photo != null ? photo.value : this.photo),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthToken {
  const AuthToken({
    required this.token,
  });

  factory AuthToken.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenFromJson(json);

  static const toJsonFactory = _$AuthTokenToJson;
  Map<String, dynamic> toJson() => _$AuthTokenToJson(this);

  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$AuthTokenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthToken &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^ runtimeType.hashCode;
}

extension $AuthTokenExtension on AuthToken {
  AuthToken copyWith({String? token}) {
    return AuthToken(token: token ?? this.token);
  }

  AuthToken copyWithWrapped({Wrapped<String>? token}) {
    return AuthToken(token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthTokenRequest {
  const AuthTokenRequest({
    required this.username,
    required this.password,
  });

  factory AuthTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenRequestFromJson(json);

  static const toJsonFactory = _$AuthTokenRequestToJson;
  Map<String, dynamic> toJson() => _$AuthTokenRequestToJson(this);

  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$AuthTokenRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthTokenRequest &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthTokenRequestExtension on AuthTokenRequest {
  AuthTokenRequest copyWith({String? username, String? password}) {
    return AuthTokenRequest(
        username: username ?? this.username,
        password: password ?? this.password);
  }

  AuthTokenRequest copyWithWrapped(
      {Wrapped<String>? username, Wrapped<String>? password}) {
    return AuthTokenRequest(
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class Badge {
  const Badge({
    required this.id,
    required this.claimed,
    required this.name,
    required this.iconUrl,
    required this.description,
    required this.tokens,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

  static const toJsonFactory = _$BadgeToJson;
  Map<String, dynamic> toJson() => _$BadgeToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'claimed')
  final bool claimed;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'tokens')
  final int tokens;
  static const fromJsonFactory = _$BadgeFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Badge &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.claimed, claimed) ||
                const DeepCollectionEquality()
                    .equals(other.claimed, claimed)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(claimed) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $BadgeExtension on Badge {
  Badge copyWith(
      {int? id,
      bool? claimed,
      String? name,
      String? iconUrl,
      String? description,
      int? tokens}) {
    return Badge(
        id: id ?? this.id,
        claimed: claimed ?? this.claimed,
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens);
  }

  Badge copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<bool>? claimed,
      Wrapped<String>? name,
      Wrapped<String>? iconUrl,
      Wrapped<String>? description,
      Wrapped<int>? tokens}) {
    return Badge(
        id: (id != null ? id.value : this.id),
        claimed: (claimed != null ? claimed.value : this.claimed),
        name: (name != null ? name.value : this.name),
        iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class BadgeRequest {
  const BadgeRequest({
    required this.name,
    required this.iconUrl,
    required this.description,
    required this.tokens,
  });

  factory BadgeRequest.fromJson(Map<String, dynamic> json) =>
      _$BadgeRequestFromJson(json);

  static const toJsonFactory = _$BadgeRequestToJson;
  Map<String, dynamic> toJson() => _$BadgeRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'icon_url')
  final String iconUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'tokens')
  final int tokens;
  static const fromJsonFactory = _$BadgeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadgeRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $BadgeRequestExtension on BadgeRequest {
  BadgeRequest copyWith(
      {String? name, String? iconUrl, String? description, int? tokens}) {
    return BadgeRequest(
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens);
  }

  BadgeRequest copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? iconUrl,
      Wrapped<String>? description,
      Wrapped<int>? tokens}) {
    return BadgeRequest(
        name: (name != null ? name.value : this.name),
        iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class BookedSegments {
  const BookedSegments({
    required this.id,
    required this.origin,
    required this.destination,
    required this.flightNumber,
    required this.flightDate,
    required this.airlineCode,
    required this.departureDate,
    required this.arrivalDate,
    required this.bookingClass,
    required this.price,
    required this.taxPercentage,
    this.ticket,
  });

  factory BookedSegments.fromJson(Map<String, dynamic> json) =>
      _$BookedSegmentsFromJson(json);

  static const toJsonFactory = _$BookedSegmentsToJson;
  Map<String, dynamic> toJson() => _$BookedSegmentsToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'origin')
  final String origin;
  @JsonKey(name: 'destination')
  final String destination;
  @JsonKey(name: 'flight_number')
  final String flightNumber;
  @JsonKey(name: 'flight_date', toJson: _dateToJson)
  final DateTime flightDate;
  @JsonKey(name: 'airline_code')
  final String airlineCode;
  @JsonKey(name: 'departure_date')
  final DateTime departureDate;
  @JsonKey(name: 'arrival_date')
  final DateTime arrivalDate;
  @JsonKey(name: 'booking_class')
  final String bookingClass;
  @JsonKey(name: 'price')
  final String price;
  @JsonKey(name: 'tax_percentage')
  final String taxPercentage;
  @JsonKey(name: 'ticket')
  final String? ticket;
  static const fromJsonFactory = _$BookedSegmentsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookedSegments &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.flightNumber, flightNumber) ||
                const DeepCollectionEquality()
                    .equals(other.flightNumber, flightNumber)) &&
            (identical(other.flightDate, flightDate) ||
                const DeepCollectionEquality()
                    .equals(other.flightDate, flightDate)) &&
            (identical(other.airlineCode, airlineCode) ||
                const DeepCollectionEquality()
                    .equals(other.airlineCode, airlineCode)) &&
            (identical(other.departureDate, departureDate) ||
                const DeepCollectionEquality()
                    .equals(other.departureDate, departureDate)) &&
            (identical(other.arrivalDate, arrivalDate) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalDate, arrivalDate)) &&
            (identical(other.bookingClass, bookingClass) ||
                const DeepCollectionEquality()
                    .equals(other.bookingClass, bookingClass)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.taxPercentage, taxPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.taxPercentage, taxPercentage)) &&
            (identical(other.ticket, ticket) ||
                const DeepCollectionEquality().equals(other.ticket, ticket)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(flightNumber) ^
      const DeepCollectionEquality().hash(flightDate) ^
      const DeepCollectionEquality().hash(airlineCode) ^
      const DeepCollectionEquality().hash(departureDate) ^
      const DeepCollectionEquality().hash(arrivalDate) ^
      const DeepCollectionEquality().hash(bookingClass) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(taxPercentage) ^
      const DeepCollectionEquality().hash(ticket) ^
      runtimeType.hashCode;
}

extension $BookedSegmentsExtension on BookedSegments {
  BookedSegments copyWith(
      {int? id,
      String? origin,
      String? destination,
      String? flightNumber,
      DateTime? flightDate,
      String? airlineCode,
      DateTime? departureDate,
      DateTime? arrivalDate,
      String? bookingClass,
      String? price,
      String? taxPercentage,
      String? ticket}) {
    return BookedSegments(
        id: id ?? this.id,
        origin: origin ?? this.origin,
        destination: destination ?? this.destination,
        flightNumber: flightNumber ?? this.flightNumber,
        flightDate: flightDate ?? this.flightDate,
        airlineCode: airlineCode ?? this.airlineCode,
        departureDate: departureDate ?? this.departureDate,
        arrivalDate: arrivalDate ?? this.arrivalDate,
        bookingClass: bookingClass ?? this.bookingClass,
        price: price ?? this.price,
        taxPercentage: taxPercentage ?? this.taxPercentage,
        ticket: ticket ?? this.ticket);
  }

  BookedSegments copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? origin,
      Wrapped<String>? destination,
      Wrapped<String>? flightNumber,
      Wrapped<DateTime>? flightDate,
      Wrapped<String>? airlineCode,
      Wrapped<DateTime>? departureDate,
      Wrapped<DateTime>? arrivalDate,
      Wrapped<String>? bookingClass,
      Wrapped<String>? price,
      Wrapped<String>? taxPercentage,
      Wrapped<String?>? ticket}) {
    return BookedSegments(
        id: (id != null ? id.value : this.id),
        origin: (origin != null ? origin.value : this.origin),
        destination:
            (destination != null ? destination.value : this.destination),
        flightNumber:
            (flightNumber != null ? flightNumber.value : this.flightNumber),
        flightDate: (flightDate != null ? flightDate.value : this.flightDate),
        airlineCode:
            (airlineCode != null ? airlineCode.value : this.airlineCode),
        departureDate:
            (departureDate != null ? departureDate.value : this.departureDate),
        arrivalDate:
            (arrivalDate != null ? arrivalDate.value : this.arrivalDate),
        bookingClass:
            (bookingClass != null ? bookingClass.value : this.bookingClass),
        price: (price != null ? price.value : this.price),
        taxPercentage:
            (taxPercentage != null ? taxPercentage.value : this.taxPercentage),
        ticket: (ticket != null ? ticket.value : this.ticket));
  }
}

@JsonSerializable(explicitToJson: true)
class BookedSegmentsRequest {
  const BookedSegmentsRequest({
    required this.origin,
    required this.destination,
    required this.flightNumber,
    required this.flightDate,
    required this.airlineCode,
    required this.departureDate,
    required this.arrivalDate,
    required this.bookingClass,
    required this.price,
    required this.taxPercentage,
    this.ticket,
  });

  factory BookedSegmentsRequest.fromJson(Map<String, dynamic> json) =>
      _$BookedSegmentsRequestFromJson(json);

  static const toJsonFactory = _$BookedSegmentsRequestToJson;
  Map<String, dynamic> toJson() => _$BookedSegmentsRequestToJson(this);

  @JsonKey(name: 'origin')
  final String origin;
  @JsonKey(name: 'destination')
  final String destination;
  @JsonKey(name: 'flight_number')
  final String flightNumber;
  @JsonKey(name: 'flight_date', toJson: _dateToJson)
  final DateTime flightDate;
  @JsonKey(name: 'airline_code')
  final String airlineCode;
  @JsonKey(name: 'departure_date')
  final DateTime departureDate;
  @JsonKey(name: 'arrival_date')
  final DateTime arrivalDate;
  @JsonKey(name: 'booking_class')
  final String bookingClass;
  @JsonKey(name: 'price')
  final String price;
  @JsonKey(name: 'tax_percentage')
  final String taxPercentage;
  @JsonKey(name: 'ticket')
  final String? ticket;
  static const fromJsonFactory = _$BookedSegmentsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookedSegmentsRequest &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.flightNumber, flightNumber) ||
                const DeepCollectionEquality()
                    .equals(other.flightNumber, flightNumber)) &&
            (identical(other.flightDate, flightDate) ||
                const DeepCollectionEquality()
                    .equals(other.flightDate, flightDate)) &&
            (identical(other.airlineCode, airlineCode) ||
                const DeepCollectionEquality()
                    .equals(other.airlineCode, airlineCode)) &&
            (identical(other.departureDate, departureDate) ||
                const DeepCollectionEquality()
                    .equals(other.departureDate, departureDate)) &&
            (identical(other.arrivalDate, arrivalDate) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalDate, arrivalDate)) &&
            (identical(other.bookingClass, bookingClass) ||
                const DeepCollectionEquality()
                    .equals(other.bookingClass, bookingClass)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.taxPercentage, taxPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.taxPercentage, taxPercentage)) &&
            (identical(other.ticket, ticket) ||
                const DeepCollectionEquality().equals(other.ticket, ticket)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(flightNumber) ^
      const DeepCollectionEquality().hash(flightDate) ^
      const DeepCollectionEquality().hash(airlineCode) ^
      const DeepCollectionEquality().hash(departureDate) ^
      const DeepCollectionEquality().hash(arrivalDate) ^
      const DeepCollectionEquality().hash(bookingClass) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(taxPercentage) ^
      const DeepCollectionEquality().hash(ticket) ^
      runtimeType.hashCode;
}

extension $BookedSegmentsRequestExtension on BookedSegmentsRequest {
  BookedSegmentsRequest copyWith(
      {String? origin,
      String? destination,
      String? flightNumber,
      DateTime? flightDate,
      String? airlineCode,
      DateTime? departureDate,
      DateTime? arrivalDate,
      String? bookingClass,
      String? price,
      String? taxPercentage,
      String? ticket}) {
    return BookedSegmentsRequest(
        origin: origin ?? this.origin,
        destination: destination ?? this.destination,
        flightNumber: flightNumber ?? this.flightNumber,
        flightDate: flightDate ?? this.flightDate,
        airlineCode: airlineCode ?? this.airlineCode,
        departureDate: departureDate ?? this.departureDate,
        arrivalDate: arrivalDate ?? this.arrivalDate,
        bookingClass: bookingClass ?? this.bookingClass,
        price: price ?? this.price,
        taxPercentage: taxPercentage ?? this.taxPercentage,
        ticket: ticket ?? this.ticket);
  }

  BookedSegmentsRequest copyWithWrapped(
      {Wrapped<String>? origin,
      Wrapped<String>? destination,
      Wrapped<String>? flightNumber,
      Wrapped<DateTime>? flightDate,
      Wrapped<String>? airlineCode,
      Wrapped<DateTime>? departureDate,
      Wrapped<DateTime>? arrivalDate,
      Wrapped<String>? bookingClass,
      Wrapped<String>? price,
      Wrapped<String>? taxPercentage,
      Wrapped<String?>? ticket}) {
    return BookedSegmentsRequest(
        origin: (origin != null ? origin.value : this.origin),
        destination:
            (destination != null ? destination.value : this.destination),
        flightNumber:
            (flightNumber != null ? flightNumber.value : this.flightNumber),
        flightDate: (flightDate != null ? flightDate.value : this.flightDate),
        airlineCode:
            (airlineCode != null ? airlineCode.value : this.airlineCode),
        departureDate:
            (departureDate != null ? departureDate.value : this.departureDate),
        arrivalDate:
            (arrivalDate != null ? arrivalDate.value : this.arrivalDate),
        bookingClass:
            (bookingClass != null ? bookingClass.value : this.bookingClass),
        price: (price != null ? price.value : this.price),
        taxPercentage:
            (taxPercentage != null ? taxPercentage.value : this.taxPercentage),
        ticket: (ticket != null ? ticket.value : this.ticket));
  }
}

@JsonSerializable(explicitToJson: true)
class Booking {
  const Booking({
    required this.bookingReference,
    required this.user,
    required this.tickets,
    required this.totalPrice,
  });

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  static const toJsonFactory = _$BookingToJson;
  Map<String, dynamic> toJson() => _$BookingToJson(this);

  @JsonKey(name: 'booking_reference')
  final String bookingReference;
  @JsonKey(name: 'user')
  final UserAccount user;
  @JsonKey(name: 'tickets', defaultValue: <Ticket>[])
  final List<Ticket> tickets;
  @JsonKey(name: 'total_price')
  final double totalPrice;
  static const fromJsonFactory = _$BookingFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Booking &&
            (identical(other.bookingReference, bookingReference) ||
                const DeepCollectionEquality()
                    .equals(other.bookingReference, bookingReference)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.tickets, tickets) ||
                const DeepCollectionEquality()
                    .equals(other.tickets, tickets)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingReference) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(tickets) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      runtimeType.hashCode;
}

extension $BookingExtension on Booking {
  Booking copyWith(
      {String? bookingReference,
      UserAccount? user,
      List<Ticket>? tickets,
      double? totalPrice}) {
    return Booking(
        bookingReference: bookingReference ?? this.bookingReference,
        user: user ?? this.user,
        tickets: tickets ?? this.tickets,
        totalPrice: totalPrice ?? this.totalPrice);
  }

  Booking copyWithWrapped(
      {Wrapped<String>? bookingReference,
      Wrapped<UserAccount>? user,
      Wrapped<List<Ticket>>? tickets,
      Wrapped<double>? totalPrice}) {
    return Booking(
        bookingReference: (bookingReference != null
            ? bookingReference.value
            : this.bookingReference),
        user: (user != null ? user.value : this.user),
        tickets: (tickets != null ? tickets.value : this.tickets),
        totalPrice: (totalPrice != null ? totalPrice.value : this.totalPrice));
  }
}

@JsonSerializable(explicitToJson: true)
class BookingRequest {
  const BookingRequest({
    required this.bookingReference,
  });

  factory BookingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestFromJson(json);

  static const toJsonFactory = _$BookingRequestToJson;
  Map<String, dynamic> toJson() => _$BookingRequestToJson(this);

  @JsonKey(name: 'booking_reference')
  final String bookingReference;
  static const fromJsonFactory = _$BookingRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BookingRequest &&
            (identical(other.bookingReference, bookingReference) ||
                const DeepCollectionEquality()
                    .equals(other.bookingReference, bookingReference)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingReference) ^
      runtimeType.hashCode;
}

extension $BookingRequestExtension on BookingRequest {
  BookingRequest copyWith({String? bookingReference}) {
    return BookingRequest(
        bookingReference: bookingReference ?? this.bookingReference);
  }

  BookingRequest copyWithWrapped({Wrapped<String>? bookingReference}) {
    return BookingRequest(
        bookingReference: (bookingReference != null
            ? bookingReference.value
            : this.bookingReference));
  }
}

@JsonSerializable(explicitToJson: true)
class FieldValidationError {
  const FieldValidationError({
    required this.field,
    required this.message,
  });

  factory FieldValidationError.fromJson(Map<String, dynamic> json) =>
      _$FieldValidationErrorFromJson(json);

  static const toJsonFactory = _$FieldValidationErrorToJson;
  Map<String, dynamic> toJson() => _$FieldValidationErrorToJson(this);

  @JsonKey(name: 'field')
  final String field;
  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$FieldValidationErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FieldValidationError &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $FieldValidationErrorExtension on FieldValidationError {
  FieldValidationError copyWith({String? field, String? message}) {
    return FieldValidationError(
        field: field ?? this.field, message: message ?? this.message);
  }

  FieldValidationError copyWithWrapped(
      {Wrapped<String>? field, Wrapped<String>? message}) {
    return FieldValidationError(
        field: (field != null ? field.value : this.field),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ForbiddenError {
  const ForbiddenError({
    required this.detail,
  });

  factory ForbiddenError.fromJson(Map<String, dynamic> json) =>
      _$ForbiddenErrorFromJson(json);

  static const toJsonFactory = _$ForbiddenErrorToJson;
  Map<String, dynamic> toJson() => _$ForbiddenErrorToJson(this);

  @JsonKey(name: 'detail')
  final String detail;
  static const fromJsonFactory = _$ForbiddenErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForbiddenError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $ForbiddenErrorExtension on ForbiddenError {
  ForbiddenError copyWith({String? detail}) {
    return ForbiddenError(detail: detail ?? this.detail);
  }

  ForbiddenError copyWithWrapped({Wrapped<String>? detail}) {
    return ForbiddenError(
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class NotFoundError {
  const NotFoundError({
    required this.detail,
  });

  factory NotFoundError.fromJson(Map<String, dynamic> json) =>
      _$NotFoundErrorFromJson(json);

  static const toJsonFactory = _$NotFoundErrorToJson;
  Map<String, dynamic> toJson() => _$NotFoundErrorToJson(this);

  @JsonKey(name: 'detail')
  final String detail;
  static const fromJsonFactory = _$NotFoundErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotFoundError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $NotFoundErrorExtension on NotFoundError {
  NotFoundError copyWith({String? detail}) {
    return NotFoundError(detail: detail ?? this.detail);
  }

  NotFoundError copyWithWrapped({Wrapped<String>? detail}) {
    return NotFoundError(detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedArticleList {
  const PaginatedArticleList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedArticleList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedArticleListFromJson(json);

  static const toJsonFactory = _$PaginatedArticleListToJson;
  Map<String, dynamic> toJson() => _$PaginatedArticleListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <Article>[])
  final List<Article>? results;
  static const fromJsonFactory = _$PaginatedArticleListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedArticleList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedArticleListExtension on PaginatedArticleList {
  PaginatedArticleList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<Article>? results}) {
    return PaginatedArticleList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedArticleList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<Article>?>? results}) {
    return PaginatedArticleList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedBadgeList {
  const PaginatedBadgeList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedBadgeList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedBadgeListFromJson(json);

  static const toJsonFactory = _$PaginatedBadgeListToJson;
  Map<String, dynamic> toJson() => _$PaginatedBadgeListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <Badge>[])
  final List<Badge>? results;
  static const fromJsonFactory = _$PaginatedBadgeListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedBadgeList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedBadgeListExtension on PaginatedBadgeList {
  PaginatedBadgeList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<Badge>? results}) {
    return PaginatedBadgeList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedBadgeList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<Badge>?>? results}) {
    return PaginatedBadgeList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedBookedSegmentsList {
  const PaginatedBookedSegmentsList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedBookedSegmentsList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedBookedSegmentsListFromJson(json);

  static const toJsonFactory = _$PaginatedBookedSegmentsListToJson;
  Map<String, dynamic> toJson() => _$PaginatedBookedSegmentsListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <BookedSegments>[])
  final List<BookedSegments>? results;
  static const fromJsonFactory = _$PaginatedBookedSegmentsListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedBookedSegmentsList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedBookedSegmentsListExtension on PaginatedBookedSegmentsList {
  PaginatedBookedSegmentsList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<BookedSegments>? results}) {
    return PaginatedBookedSegmentsList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedBookedSegmentsList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<BookedSegments>?>? results}) {
    return PaginatedBookedSegmentsList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedBookingList {
  const PaginatedBookingList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedBookingList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedBookingListFromJson(json);

  static const toJsonFactory = _$PaginatedBookingListToJson;
  Map<String, dynamic> toJson() => _$PaginatedBookingListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <Booking>[])
  final List<Booking>? results;
  static const fromJsonFactory = _$PaginatedBookingListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedBookingList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedBookingListExtension on PaginatedBookingList {
  PaginatedBookingList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<Booking>? results}) {
    return PaginatedBookingList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedBookingList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<Booking>?>? results}) {
    return PaginatedBookingList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedRewardList {
  const PaginatedRewardList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedRewardList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedRewardListFromJson(json);

  static const toJsonFactory = _$PaginatedRewardListToJson;
  Map<String, dynamic> toJson() => _$PaginatedRewardListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <Reward>[])
  final List<Reward>? results;
  static const fromJsonFactory = _$PaginatedRewardListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedRewardList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedRewardListExtension on PaginatedRewardList {
  PaginatedRewardList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<Reward>? results}) {
    return PaginatedRewardList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedRewardList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<Reward>?>? results}) {
    return PaginatedRewardList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class PaginatedUserAccountList {
  const PaginatedUserAccountList({
    this.count,
    this.previous,
    this.current,
    this.next,
    this.last,
    this.results,
  });

  factory PaginatedUserAccountList.fromJson(Map<String, dynamic> json) =>
      _$PaginatedUserAccountListFromJson(json);

  static const toJsonFactory = _$PaginatedUserAccountListToJson;
  Map<String, dynamic> toJson() => _$PaginatedUserAccountListToJson(this);

  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'previous')
  final int? previous;
  @JsonKey(name: 'current')
  final int? current;
  @JsonKey(name: 'next')
  final int? next;
  @JsonKey(name: 'last')
  final int? last;
  @JsonKey(name: 'results', defaultValue: <UserAccount>[])
  final List<UserAccount>? results;
  static const fromJsonFactory = _$PaginatedUserAccountListFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginatedUserAccountList &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(results) ^
      runtimeType.hashCode;
}

extension $PaginatedUserAccountListExtension on PaginatedUserAccountList {
  PaginatedUserAccountList copyWith(
      {int? count,
      int? previous,
      int? current,
      int? next,
      int? last,
      List<UserAccount>? results}) {
    return PaginatedUserAccountList(
        count: count ?? this.count,
        previous: previous ?? this.previous,
        current: current ?? this.current,
        next: next ?? this.next,
        last: last ?? this.last,
        results: results ?? this.results);
  }

  PaginatedUserAccountList copyWithWrapped(
      {Wrapped<int?>? count,
      Wrapped<int?>? previous,
      Wrapped<int?>? current,
      Wrapped<int?>? next,
      Wrapped<int?>? last,
      Wrapped<List<UserAccount>?>? results}) {
    return PaginatedUserAccountList(
        count: (count != null ? count.value : this.count),
        previous: (previous != null ? previous.value : this.previous),
        current: (current != null ? current.value : this.current),
        next: (next != null ? next.value : this.next),
        last: (last != null ? last.value : this.last),
        results: (results != null ? results.value : this.results));
  }
}

@JsonSerializable(explicitToJson: true)
class Partner {
  const Partner({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);

  static const toJsonFactory = _$PartnerToJson;
  Map<String, dynamic> toJson() => _$PartnerToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  static const fromJsonFactory = _$PartnerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Partner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      runtimeType.hashCode;
}

extension $PartnerExtension on Partner {
  Partner copyWith(
      {int? id, String? name, String? description, String? imageUrl}) {
    return Partner(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  Partner copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String>? imageUrl}) {
    return Partner(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class PartnerRequest {
  const PartnerRequest({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory PartnerRequest.fromJson(Map<String, dynamic> json) =>
      _$PartnerRequestFromJson(json);

  static const toJsonFactory = _$PartnerRequestToJson;
  Map<String, dynamic> toJson() => _$PartnerRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  static const fromJsonFactory = _$PartnerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartnerRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      runtimeType.hashCode;
}

extension $PartnerRequestExtension on PartnerRequest {
  PartnerRequest copyWith(
      {String? name, String? description, String? imageUrl}) {
    return PartnerRequest(
        name: name ?? this.name,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl);
  }

  PartnerRequest copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String>? imageUrl}) {
    return PartnerRequest(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedArticleRequest {
  const PatchedArticleRequest({
    this.interactions,
    this.title,
    this.description,
    this.content,
    this.photo,
    this.tokens,
  });

  factory PatchedArticleRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedArticleRequestFromJson(json);

  static const toJsonFactory = _$PatchedArticleRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedArticleRequestToJson(this);

  @JsonKey(
      name: 'interactions', defaultValue: <UserArticleInteractionRequest>[])
  final List<UserArticleInteractionRequest>? interactions;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'photo')
  final String? photo;
  @JsonKey(name: 'tokens')
  final int? tokens;
  static const fromJsonFactory = _$PatchedArticleRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedArticleRequest &&
            (identical(other.interactions, interactions) ||
                const DeepCollectionEquality()
                    .equals(other.interactions, interactions)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(interactions) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $PatchedArticleRequestExtension on PatchedArticleRequest {
  PatchedArticleRequest copyWith(
      {List<UserArticleInteractionRequest>? interactions,
      String? title,
      String? description,
      String? content,
      String? photo,
      int? tokens}) {
    return PatchedArticleRequest(
        interactions: interactions ?? this.interactions,
        title: title ?? this.title,
        description: description ?? this.description,
        content: content ?? this.content,
        photo: photo ?? this.photo,
        tokens: tokens ?? this.tokens);
  }

  PatchedArticleRequest copyWithWrapped(
      {Wrapped<List<UserArticleInteractionRequest>?>? interactions,
      Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<String?>? content,
      Wrapped<String?>? photo,
      Wrapped<int?>? tokens}) {
    return PatchedArticleRequest(
        interactions:
            (interactions != null ? interactions.value : this.interactions),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        content: (content != null ? content.value : this.content),
        photo: (photo != null ? photo.value : this.photo),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedBadgeRequest {
  const PatchedBadgeRequest({
    this.name,
    this.iconUrl,
    this.description,
    this.tokens,
  });

  factory PatchedBadgeRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedBadgeRequestFromJson(json);

  static const toJsonFactory = _$PatchedBadgeRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedBadgeRequestToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'tokens')
  final int? tokens;
  static const fromJsonFactory = _$PatchedBadgeRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedBadgeRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      runtimeType.hashCode;
}

extension $PatchedBadgeRequestExtension on PatchedBadgeRequest {
  PatchedBadgeRequest copyWith(
      {String? name, String? iconUrl, String? description, int? tokens}) {
    return PatchedBadgeRequest(
        name: name ?? this.name,
        iconUrl: iconUrl ?? this.iconUrl,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens);
  }

  PatchedBadgeRequest copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? iconUrl,
      Wrapped<String?>? description,
      Wrapped<int?>? tokens}) {
    return PatchedBadgeRequest(
        name: (name != null ? name.value : this.name),
        iconUrl: (iconUrl != null ? iconUrl.value : this.iconUrl),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedBookedSegmentsRequest {
  const PatchedBookedSegmentsRequest({
    this.origin,
    this.destination,
    this.flightNumber,
    this.flightDate,
    this.airlineCode,
    this.departureDate,
    this.arrivalDate,
    this.bookingClass,
    this.price,
    this.taxPercentage,
    this.ticket,
  });

  factory PatchedBookedSegmentsRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedBookedSegmentsRequestFromJson(json);

  static const toJsonFactory = _$PatchedBookedSegmentsRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedBookedSegmentsRequestToJson(this);

  @JsonKey(name: 'origin')
  final String? origin;
  @JsonKey(name: 'destination')
  final String? destination;
  @JsonKey(name: 'flight_number')
  final String? flightNumber;
  @JsonKey(name: 'flight_date', toJson: _dateToJson)
  final DateTime? flightDate;
  @JsonKey(name: 'airline_code')
  final String? airlineCode;
  @JsonKey(name: 'departure_date')
  final DateTime? departureDate;
  @JsonKey(name: 'arrival_date')
  final DateTime? arrivalDate;
  @JsonKey(name: 'booking_class')
  final String? bookingClass;
  @JsonKey(name: 'price')
  final String? price;
  @JsonKey(name: 'tax_percentage')
  final String? taxPercentage;
  @JsonKey(name: 'ticket')
  final String? ticket;
  static const fromJsonFactory = _$PatchedBookedSegmentsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedBookedSegmentsRequest &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.flightNumber, flightNumber) ||
                const DeepCollectionEquality()
                    .equals(other.flightNumber, flightNumber)) &&
            (identical(other.flightDate, flightDate) ||
                const DeepCollectionEquality()
                    .equals(other.flightDate, flightDate)) &&
            (identical(other.airlineCode, airlineCode) ||
                const DeepCollectionEquality()
                    .equals(other.airlineCode, airlineCode)) &&
            (identical(other.departureDate, departureDate) ||
                const DeepCollectionEquality()
                    .equals(other.departureDate, departureDate)) &&
            (identical(other.arrivalDate, arrivalDate) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalDate, arrivalDate)) &&
            (identical(other.bookingClass, bookingClass) ||
                const DeepCollectionEquality()
                    .equals(other.bookingClass, bookingClass)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.taxPercentage, taxPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.taxPercentage, taxPercentage)) &&
            (identical(other.ticket, ticket) ||
                const DeepCollectionEquality().equals(other.ticket, ticket)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(flightNumber) ^
      const DeepCollectionEquality().hash(flightDate) ^
      const DeepCollectionEquality().hash(airlineCode) ^
      const DeepCollectionEquality().hash(departureDate) ^
      const DeepCollectionEquality().hash(arrivalDate) ^
      const DeepCollectionEquality().hash(bookingClass) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(taxPercentage) ^
      const DeepCollectionEquality().hash(ticket) ^
      runtimeType.hashCode;
}

extension $PatchedBookedSegmentsRequestExtension
    on PatchedBookedSegmentsRequest {
  PatchedBookedSegmentsRequest copyWith(
      {String? origin,
      String? destination,
      String? flightNumber,
      DateTime? flightDate,
      String? airlineCode,
      DateTime? departureDate,
      DateTime? arrivalDate,
      String? bookingClass,
      String? price,
      String? taxPercentage,
      String? ticket}) {
    return PatchedBookedSegmentsRequest(
        origin: origin ?? this.origin,
        destination: destination ?? this.destination,
        flightNumber: flightNumber ?? this.flightNumber,
        flightDate: flightDate ?? this.flightDate,
        airlineCode: airlineCode ?? this.airlineCode,
        departureDate: departureDate ?? this.departureDate,
        arrivalDate: arrivalDate ?? this.arrivalDate,
        bookingClass: bookingClass ?? this.bookingClass,
        price: price ?? this.price,
        taxPercentage: taxPercentage ?? this.taxPercentage,
        ticket: ticket ?? this.ticket);
  }

  PatchedBookedSegmentsRequest copyWithWrapped(
      {Wrapped<String?>? origin,
      Wrapped<String?>? destination,
      Wrapped<String?>? flightNumber,
      Wrapped<DateTime?>? flightDate,
      Wrapped<String?>? airlineCode,
      Wrapped<DateTime?>? departureDate,
      Wrapped<DateTime?>? arrivalDate,
      Wrapped<String?>? bookingClass,
      Wrapped<String?>? price,
      Wrapped<String?>? taxPercentage,
      Wrapped<String?>? ticket}) {
    return PatchedBookedSegmentsRequest(
        origin: (origin != null ? origin.value : this.origin),
        destination:
            (destination != null ? destination.value : this.destination),
        flightNumber:
            (flightNumber != null ? flightNumber.value : this.flightNumber),
        flightDate: (flightDate != null ? flightDate.value : this.flightDate),
        airlineCode:
            (airlineCode != null ? airlineCode.value : this.airlineCode),
        departureDate:
            (departureDate != null ? departureDate.value : this.departureDate),
        arrivalDate:
            (arrivalDate != null ? arrivalDate.value : this.arrivalDate),
        bookingClass:
            (bookingClass != null ? bookingClass.value : this.bookingClass),
        price: (price != null ? price.value : this.price),
        taxPercentage:
            (taxPercentage != null ? taxPercentage.value : this.taxPercentage),
        ticket: (ticket != null ? ticket.value : this.ticket));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedBookingRequest {
  const PatchedBookingRequest({
    this.bookingReference,
  });

  factory PatchedBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedBookingRequestFromJson(json);

  static const toJsonFactory = _$PatchedBookingRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedBookingRequestToJson(this);

  @JsonKey(name: 'booking_reference')
  final String? bookingReference;
  static const fromJsonFactory = _$PatchedBookingRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedBookingRequest &&
            (identical(other.bookingReference, bookingReference) ||
                const DeepCollectionEquality()
                    .equals(other.bookingReference, bookingReference)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bookingReference) ^
      runtimeType.hashCode;
}

extension $PatchedBookingRequestExtension on PatchedBookingRequest {
  PatchedBookingRequest copyWith({String? bookingReference}) {
    return PatchedBookingRequest(
        bookingReference: bookingReference ?? this.bookingReference);
  }

  PatchedBookingRequest copyWithWrapped({Wrapped<String?>? bookingReference}) {
    return PatchedBookingRequest(
        bookingReference: (bookingReference != null
            ? bookingReference.value
            : this.bookingReference));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedRewardRequest {
  const PatchedRewardRequest({
    this.name,
    this.description,
    this.tokens,
    this.imageUrl,
    this.unlimited,
  });

  factory PatchedRewardRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedRewardRequestFromJson(json);

  static const toJsonFactory = _$PatchedRewardRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedRewardRequestToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'tokens')
  final int? tokens;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(name: 'unlimited')
  final bool? unlimited;
  static const fromJsonFactory = _$PatchedRewardRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedRewardRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.unlimited, unlimited) ||
                const DeepCollectionEquality()
                    .equals(other.unlimited, unlimited)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(unlimited) ^
      runtimeType.hashCode;
}

extension $PatchedRewardRequestExtension on PatchedRewardRequest {
  PatchedRewardRequest copyWith(
      {String? name,
      String? description,
      int? tokens,
      String? imageUrl,
      bool? unlimited}) {
    return PatchedRewardRequest(
        name: name ?? this.name,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens,
        imageUrl: imageUrl ?? this.imageUrl,
        unlimited: unlimited ?? this.unlimited);
  }

  PatchedRewardRequest copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<int?>? tokens,
      Wrapped<String?>? imageUrl,
      Wrapped<bool?>? unlimited}) {
    return PatchedRewardRequest(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        unlimited: (unlimited != null ? unlimited.value : this.unlimited));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchedUserAccountRequest {
  const PatchedUserAccountRequest({
    this.email,
    this.traveller,
    this.loyaltyTier,
    this.totalMiles,
    this.tokensAvailable,
  });

  factory PatchedUserAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchedUserAccountRequestFromJson(json);

  static const toJsonFactory = _$PatchedUserAccountRequestToJson;
  Map<String, dynamic> toJson() => _$PatchedUserAccountRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'traveller')
  final TravellerRequest? traveller;
  @JsonKey(name: 'loyalty_tier')
  final int? loyaltyTier;
  @JsonKey(name: 'total_miles')
  final int? totalMiles;
  @JsonKey(name: 'tokens_available')
  final int? tokensAvailable;
  static const fromJsonFactory = _$PatchedUserAccountRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchedUserAccountRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.traveller, traveller) ||
                const DeepCollectionEquality()
                    .equals(other.traveller, traveller)) &&
            (identical(other.loyaltyTier, loyaltyTier) ||
                const DeepCollectionEquality()
                    .equals(other.loyaltyTier, loyaltyTier)) &&
            (identical(other.totalMiles, totalMiles) ||
                const DeepCollectionEquality()
                    .equals(other.totalMiles, totalMiles)) &&
            (identical(other.tokensAvailable, tokensAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.tokensAvailable, tokensAvailable)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(traveller) ^
      const DeepCollectionEquality().hash(loyaltyTier) ^
      const DeepCollectionEquality().hash(totalMiles) ^
      const DeepCollectionEquality().hash(tokensAvailable) ^
      runtimeType.hashCode;
}

extension $PatchedUserAccountRequestExtension on PatchedUserAccountRequest {
  PatchedUserAccountRequest copyWith(
      {String? email,
      TravellerRequest? traveller,
      int? loyaltyTier,
      int? totalMiles,
      int? tokensAvailable}) {
    return PatchedUserAccountRequest(
        email: email ?? this.email,
        traveller: traveller ?? this.traveller,
        loyaltyTier: loyaltyTier ?? this.loyaltyTier,
        totalMiles: totalMiles ?? this.totalMiles,
        tokensAvailable: tokensAvailable ?? this.tokensAvailable);
  }

  PatchedUserAccountRequest copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<TravellerRequest?>? traveller,
      Wrapped<int?>? loyaltyTier,
      Wrapped<int?>? totalMiles,
      Wrapped<int?>? tokensAvailable}) {
    return PatchedUserAccountRequest(
        email: (email != null ? email.value : this.email),
        traveller: (traveller != null ? traveller.value : this.traveller),
        loyaltyTier:
            (loyaltyTier != null ? loyaltyTier.value : this.loyaltyTier),
        totalMiles: (totalMiles != null ? totalMiles.value : this.totalMiles),
        tokensAvailable: (tokensAvailable != null
            ? tokensAvailable.value
            : this.tokensAvailable));
  }
}

@JsonSerializable(explicitToJson: true)
class Reward {
  const Reward({
    required this.id,
    required this.partner,
    required this.name,
    required this.description,
    required this.tokens,
    required this.imageUrl,
    this.unlimited,
  });

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);

  static const toJsonFactory = _$RewardToJson;
  Map<String, dynamic> toJson() => _$RewardToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'partner')
  final Partner partner;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'tokens')
  final int tokens;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'unlimited')
  final bool? unlimited;
  static const fromJsonFactory = _$RewardFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Reward &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality()
                    .equals(other.partner, partner)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.unlimited, unlimited) ||
                const DeepCollectionEquality()
                    .equals(other.unlimited, unlimited)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(unlimited) ^
      runtimeType.hashCode;
}

extension $RewardExtension on Reward {
  Reward copyWith(
      {int? id,
      Partner? partner,
      String? name,
      String? description,
      int? tokens,
      String? imageUrl,
      bool? unlimited}) {
    return Reward(
        id: id ?? this.id,
        partner: partner ?? this.partner,
        name: name ?? this.name,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens,
        imageUrl: imageUrl ?? this.imageUrl,
        unlimited: unlimited ?? this.unlimited);
  }

  Reward copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<Partner>? partner,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<int>? tokens,
      Wrapped<String>? imageUrl,
      Wrapped<bool?>? unlimited}) {
    return Reward(
        id: (id != null ? id.value : this.id),
        partner: (partner != null ? partner.value : this.partner),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        unlimited: (unlimited != null ? unlimited.value : this.unlimited));
  }
}

@JsonSerializable(explicitToJson: true)
class RewardRequest {
  const RewardRequest({
    required this.name,
    required this.description,
    required this.tokens,
    required this.imageUrl,
    this.unlimited,
  });

  factory RewardRequest.fromJson(Map<String, dynamic> json) =>
      _$RewardRequestFromJson(json);

  static const toJsonFactory = _$RewardRequestToJson;
  Map<String, dynamic> toJson() => _$RewardRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'tokens')
  final int tokens;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'unlimited')
  final bool? unlimited;
  static const fromJsonFactory = _$RewardRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RewardRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.unlimited, unlimited) ||
                const DeepCollectionEquality()
                    .equals(other.unlimited, unlimited)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(unlimited) ^
      runtimeType.hashCode;
}

extension $RewardRequestExtension on RewardRequest {
  RewardRequest copyWith(
      {String? name,
      String? description,
      int? tokens,
      String? imageUrl,
      bool? unlimited}) {
    return RewardRequest(
        name: name ?? this.name,
        description: description ?? this.description,
        tokens: tokens ?? this.tokens,
        imageUrl: imageUrl ?? this.imageUrl,
        unlimited: unlimited ?? this.unlimited);
  }

  RewardRequest copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<int>? tokens,
      Wrapped<String>? imageUrl,
      Wrapped<bool?>? unlimited}) {
    return RewardRequest(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        tokens: (tokens != null ? tokens.value : this.tokens),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        unlimited: (unlimited != null ? unlimited.value : this.unlimited));
  }
}

@JsonSerializable(explicitToJson: true)
class Ticket {
  const Ticket({
    required this.ticketNumber,
    required this.traveller,
    required this.bookedSegments,
    required this.totalPrice,
    required this.ticketingAirline,
    required this.ticketStatus,
    required this.issuedDate,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  static const toJsonFactory = _$TicketToJson;
  Map<String, dynamic> toJson() => _$TicketToJson(this);

  @JsonKey(name: 'ticket_number')
  final String ticketNumber;
  @JsonKey(name: 'traveller')
  final Traveller traveller;
  @JsonKey(name: 'booked_segments', defaultValue: <BookedSegments>[])
  final List<BookedSegments> bookedSegments;
  @JsonKey(name: 'total_price')
  final double totalPrice;
  @JsonKey(name: 'ticketing_airline')
  final String ticketingAirline;
  @JsonKey(name: 'ticket_status')
  final String ticketStatus;
  @JsonKey(name: 'issued_date', toJson: _dateToJson)
  final DateTime issuedDate;
  static const fromJsonFactory = _$TicketFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ticket &&
            (identical(other.ticketNumber, ticketNumber) ||
                const DeepCollectionEquality()
                    .equals(other.ticketNumber, ticketNumber)) &&
            (identical(other.traveller, traveller) ||
                const DeepCollectionEquality()
                    .equals(other.traveller, traveller)) &&
            (identical(other.bookedSegments, bookedSegments) ||
                const DeepCollectionEquality()
                    .equals(other.bookedSegments, bookedSegments)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.ticketingAirline, ticketingAirline) ||
                const DeepCollectionEquality()
                    .equals(other.ticketingAirline, ticketingAirline)) &&
            (identical(other.ticketStatus, ticketStatus) ||
                const DeepCollectionEquality()
                    .equals(other.ticketStatus, ticketStatus)) &&
            (identical(other.issuedDate, issuedDate) ||
                const DeepCollectionEquality()
                    .equals(other.issuedDate, issuedDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketNumber) ^
      const DeepCollectionEquality().hash(traveller) ^
      const DeepCollectionEquality().hash(bookedSegments) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(ticketingAirline) ^
      const DeepCollectionEquality().hash(ticketStatus) ^
      const DeepCollectionEquality().hash(issuedDate) ^
      runtimeType.hashCode;
}

extension $TicketExtension on Ticket {
  Ticket copyWith(
      {String? ticketNumber,
      Traveller? traveller,
      List<BookedSegments>? bookedSegments,
      double? totalPrice,
      String? ticketingAirline,
      String? ticketStatus,
      DateTime? issuedDate}) {
    return Ticket(
        ticketNumber: ticketNumber ?? this.ticketNumber,
        traveller: traveller ?? this.traveller,
        bookedSegments: bookedSegments ?? this.bookedSegments,
        totalPrice: totalPrice ?? this.totalPrice,
        ticketingAirline: ticketingAirline ?? this.ticketingAirline,
        ticketStatus: ticketStatus ?? this.ticketStatus,
        issuedDate: issuedDate ?? this.issuedDate);
  }

  Ticket copyWithWrapped(
      {Wrapped<String>? ticketNumber,
      Wrapped<Traveller>? traveller,
      Wrapped<List<BookedSegments>>? bookedSegments,
      Wrapped<double>? totalPrice,
      Wrapped<String>? ticketingAirline,
      Wrapped<String>? ticketStatus,
      Wrapped<DateTime>? issuedDate}) {
    return Ticket(
        ticketNumber:
            (ticketNumber != null ? ticketNumber.value : this.ticketNumber),
        traveller: (traveller != null ? traveller.value : this.traveller),
        bookedSegments: (bookedSegments != null
            ? bookedSegments.value
            : this.bookedSegments),
        totalPrice: (totalPrice != null ? totalPrice.value : this.totalPrice),
        ticketingAirline: (ticketingAirline != null
            ? ticketingAirline.value
            : this.ticketingAirline),
        ticketStatus:
            (ticketStatus != null ? ticketStatus.value : this.ticketStatus),
        issuedDate: (issuedDate != null ? issuedDate.value : this.issuedDate));
  }
}

@JsonSerializable(explicitToJson: true)
class TicketRequest {
  const TicketRequest({
    required this.ticketNumber,
    required this.ticketingAirline,
    required this.ticketStatus,
    required this.issuedDate,
  });

  factory TicketRequest.fromJson(Map<String, dynamic> json) =>
      _$TicketRequestFromJson(json);

  static const toJsonFactory = _$TicketRequestToJson;
  Map<String, dynamic> toJson() => _$TicketRequestToJson(this);

  @JsonKey(name: 'ticket_number')
  final String ticketNumber;
  @JsonKey(name: 'ticketing_airline')
  final String ticketingAirline;
  @JsonKey(name: 'ticket_status')
  final String ticketStatus;
  @JsonKey(name: 'issued_date', toJson: _dateToJson)
  final DateTime issuedDate;
  static const fromJsonFactory = _$TicketRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TicketRequest &&
            (identical(other.ticketNumber, ticketNumber) ||
                const DeepCollectionEquality()
                    .equals(other.ticketNumber, ticketNumber)) &&
            (identical(other.ticketingAirline, ticketingAirline) ||
                const DeepCollectionEquality()
                    .equals(other.ticketingAirline, ticketingAirline)) &&
            (identical(other.ticketStatus, ticketStatus) ||
                const DeepCollectionEquality()
                    .equals(other.ticketStatus, ticketStatus)) &&
            (identical(other.issuedDate, issuedDate) ||
                const DeepCollectionEquality()
                    .equals(other.issuedDate, issuedDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticketNumber) ^
      const DeepCollectionEquality().hash(ticketingAirline) ^
      const DeepCollectionEquality().hash(ticketStatus) ^
      const DeepCollectionEquality().hash(issuedDate) ^
      runtimeType.hashCode;
}

extension $TicketRequestExtension on TicketRequest {
  TicketRequest copyWith(
      {String? ticketNumber,
      String? ticketingAirline,
      String? ticketStatus,
      DateTime? issuedDate}) {
    return TicketRequest(
        ticketNumber: ticketNumber ?? this.ticketNumber,
        ticketingAirline: ticketingAirline ?? this.ticketingAirline,
        ticketStatus: ticketStatus ?? this.ticketStatus,
        issuedDate: issuedDate ?? this.issuedDate);
  }

  TicketRequest copyWithWrapped(
      {Wrapped<String>? ticketNumber,
      Wrapped<String>? ticketingAirline,
      Wrapped<String>? ticketStatus,
      Wrapped<DateTime>? issuedDate}) {
    return TicketRequest(
        ticketNumber:
            (ticketNumber != null ? ticketNumber.value : this.ticketNumber),
        ticketingAirline: (ticketingAirline != null
            ? ticketingAirline.value
            : this.ticketingAirline),
        ticketStatus:
            (ticketStatus != null ? ticketStatus.value : this.ticketStatus),
        issuedDate: (issuedDate != null ? issuedDate.value : this.issuedDate));
  }
}

@JsonSerializable(explicitToJson: true)
class Traveller {
  const Traveller({
    required this.id,
    required this.firstName,
    this.middleName,
    required this.lastName,
    this.salutation,
    this.avatar,
    this.gender,
    this.passengerType,
    this.frequentFlyerNumber,
    required this.street,
    required this.city,
    required this.postalCode,
    this.country,
  });

  factory Traveller.fromJson(Map<String, dynamic> json) =>
      _$TravellerFromJson(json);

  static const toJsonFactory = _$TravellerToJson;
  Map<String, dynamic> toJson() => _$TravellerToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(
    name: 'salutation',
    toJson: salutationEnumNullableToJson,
    fromJson: salutationEnumNullableFromJson,
  )
  final enums.SalutationEnum? salutation;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(
    name: 'gender',
    toJson: genderEnumNullableToJson,
    fromJson: genderEnumNullableFromJson,
  )
  final enums.GenderEnum? gender;
  @JsonKey(
    name: 'passenger_type',
    toJson: passengerTypeEnumNullableToJson,
    fromJson: passengerTypeEnumNullableFromJson,
  )
  final enums.PassengerTypeEnum? passengerType;
  @JsonKey(name: 'frequent_flyer_number')
  final String? frequentFlyerNumber;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @JsonKey(name: 'country')
  final dynamic country;
  static const fromJsonFactory = _$TravellerFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Traveller &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.passengerType, passengerType) ||
                const DeepCollectionEquality()
                    .equals(other.passengerType, passengerType)) &&
            (identical(other.frequentFlyerNumber, frequentFlyerNumber) ||
                const DeepCollectionEquality()
                    .equals(other.frequentFlyerNumber, frequentFlyerNumber)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(passengerType) ^
      const DeepCollectionEquality().hash(frequentFlyerNumber) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $TravellerExtension on Traveller {
  Traveller copyWith(
      {int? id,
      String? firstName,
      String? middleName,
      String? lastName,
      enums.SalutationEnum? salutation,
      String? avatar,
      enums.GenderEnum? gender,
      enums.PassengerTypeEnum? passengerType,
      String? frequentFlyerNumber,
      String? street,
      String? city,
      String? postalCode,
      dynamic country}) {
    return Traveller(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        salutation: salutation ?? this.salutation,
        avatar: avatar ?? this.avatar,
        gender: gender ?? this.gender,
        passengerType: passengerType ?? this.passengerType,
        frequentFlyerNumber: frequentFlyerNumber ?? this.frequentFlyerNumber,
        street: street ?? this.street,
        city: city ?? this.city,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country);
  }

  Traveller copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? firstName,
      Wrapped<String?>? middleName,
      Wrapped<String>? lastName,
      Wrapped<enums.SalutationEnum?>? salutation,
      Wrapped<String?>? avatar,
      Wrapped<enums.GenderEnum?>? gender,
      Wrapped<enums.PassengerTypeEnum?>? passengerType,
      Wrapped<String?>? frequentFlyerNumber,
      Wrapped<String>? street,
      Wrapped<String>? city,
      Wrapped<String>? postalCode,
      Wrapped<dynamic>? country}) {
    return Traveller(
        id: (id != null ? id.value : this.id),
        firstName: (firstName != null ? firstName.value : this.firstName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        salutation: (salutation != null ? salutation.value : this.salutation),
        avatar: (avatar != null ? avatar.value : this.avatar),
        gender: (gender != null ? gender.value : this.gender),
        passengerType:
            (passengerType != null ? passengerType.value : this.passengerType),
        frequentFlyerNumber: (frequentFlyerNumber != null
            ? frequentFlyerNumber.value
            : this.frequentFlyerNumber),
        street: (street != null ? street.value : this.street),
        city: (city != null ? city.value : this.city),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        country: (country != null ? country.value : this.country));
  }
}

@JsonSerializable(explicitToJson: true)
class TravellerRequest {
  const TravellerRequest({
    required this.firstName,
    this.middleName,
    required this.lastName,
    this.salutation,
    this.avatar,
    this.gender,
    this.passengerType,
    this.frequentFlyerNumber,
    required this.street,
    required this.city,
    required this.postalCode,
    this.country,
  });

  factory TravellerRequest.fromJson(Map<String, dynamic> json) =>
      _$TravellerRequestFromJson(json);

  static const toJsonFactory = _$TravellerRequestToJson;
  Map<String, dynamic> toJson() => _$TravellerRequestToJson(this);

  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(
    name: 'salutation',
    toJson: salutationEnumNullableToJson,
    fromJson: salutationEnumNullableFromJson,
  )
  final enums.SalutationEnum? salutation;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(
    name: 'gender',
    toJson: genderEnumNullableToJson,
    fromJson: genderEnumNullableFromJson,
  )
  final enums.GenderEnum? gender;
  @JsonKey(
    name: 'passenger_type',
    toJson: passengerTypeEnumNullableToJson,
    fromJson: passengerTypeEnumNullableFromJson,
  )
  final enums.PassengerTypeEnum? passengerType;
  @JsonKey(name: 'frequent_flyer_number')
  final String? frequentFlyerNumber;
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @JsonKey(name: 'country')
  final dynamic country;
  static const fromJsonFactory = _$TravellerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TravellerRequest &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.passengerType, passengerType) ||
                const DeepCollectionEquality()
                    .equals(other.passengerType, passengerType)) &&
            (identical(other.frequentFlyerNumber, frequentFlyerNumber) ||
                const DeepCollectionEquality()
                    .equals(other.frequentFlyerNumber, frequentFlyerNumber)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(passengerType) ^
      const DeepCollectionEquality().hash(frequentFlyerNumber) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(country) ^
      runtimeType.hashCode;
}

extension $TravellerRequestExtension on TravellerRequest {
  TravellerRequest copyWith(
      {String? firstName,
      String? middleName,
      String? lastName,
      enums.SalutationEnum? salutation,
      String? avatar,
      enums.GenderEnum? gender,
      enums.PassengerTypeEnum? passengerType,
      String? frequentFlyerNumber,
      String? street,
      String? city,
      String? postalCode,
      dynamic country}) {
    return TravellerRequest(
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        salutation: salutation ?? this.salutation,
        avatar: avatar ?? this.avatar,
        gender: gender ?? this.gender,
        passengerType: passengerType ?? this.passengerType,
        frequentFlyerNumber: frequentFlyerNumber ?? this.frequentFlyerNumber,
        street: street ?? this.street,
        city: city ?? this.city,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country);
  }

  TravellerRequest copyWithWrapped(
      {Wrapped<String>? firstName,
      Wrapped<String?>? middleName,
      Wrapped<String>? lastName,
      Wrapped<enums.SalutationEnum?>? salutation,
      Wrapped<String?>? avatar,
      Wrapped<enums.GenderEnum?>? gender,
      Wrapped<enums.PassengerTypeEnum?>? passengerType,
      Wrapped<String?>? frequentFlyerNumber,
      Wrapped<String>? street,
      Wrapped<String>? city,
      Wrapped<String>? postalCode,
      Wrapped<dynamic>? country}) {
    return TravellerRequest(
        firstName: (firstName != null ? firstName.value : this.firstName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        salutation: (salutation != null ? salutation.value : this.salutation),
        avatar: (avatar != null ? avatar.value : this.avatar),
        gender: (gender != null ? gender.value : this.gender),
        passengerType:
            (passengerType != null ? passengerType.value : this.passengerType),
        frequentFlyerNumber: (frequentFlyerNumber != null
            ? frequentFlyerNumber.value
            : this.frequentFlyerNumber),
        street: (street != null ? street.value : this.street),
        city: (city != null ? city.value : this.city),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        country: (country != null ? country.value : this.country));
  }
}

@JsonSerializable(explicitToJson: true)
class UnauthenticatedError {
  const UnauthenticatedError({
    required this.detail,
  });

  factory UnauthenticatedError.fromJson(Map<String, dynamic> json) =>
      _$UnauthenticatedErrorFromJson(json);

  static const toJsonFactory = _$UnauthenticatedErrorToJson;
  Map<String, dynamic> toJson() => _$UnauthenticatedErrorToJson(this);

  @JsonKey(name: 'detail')
  final String detail;
  static const fromJsonFactory = _$UnauthenticatedErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnauthenticatedError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $UnauthenticatedErrorExtension on UnauthenticatedError {
  UnauthenticatedError copyWith({String? detail}) {
    return UnauthenticatedError(detail: detail ?? this.detail);
  }

  UnauthenticatedError copyWithWrapped({Wrapped<String>? detail}) {
    return UnauthenticatedError(
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class UserAccount {
  const UserAccount({
    required this.id,
    required this.email,
    required this.traveller,
    this.loyaltyTier,
    this.totalMiles,
    this.tokensAvailable,
  });

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);

  static const toJsonFactory = _$UserAccountToJson;
  Map<String, dynamic> toJson() => _$UserAccountToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'traveller')
  final Traveller? traveller;
  @JsonKey(name: 'loyalty_tier')
  final int? loyaltyTier;
  @JsonKey(name: 'total_miles')
  final int? totalMiles;
  @JsonKey(name: 'tokens_available')
  final int? tokensAvailable;
  static const fromJsonFactory = _$UserAccountFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAccount &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.traveller, traveller) ||
                const DeepCollectionEquality()
                    .equals(other.traveller, traveller)) &&
            (identical(other.loyaltyTier, loyaltyTier) ||
                const DeepCollectionEquality()
                    .equals(other.loyaltyTier, loyaltyTier)) &&
            (identical(other.totalMiles, totalMiles) ||
                const DeepCollectionEquality()
                    .equals(other.totalMiles, totalMiles)) &&
            (identical(other.tokensAvailable, tokensAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.tokensAvailable, tokensAvailable)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(traveller) ^
      const DeepCollectionEquality().hash(loyaltyTier) ^
      const DeepCollectionEquality().hash(totalMiles) ^
      const DeepCollectionEquality().hash(tokensAvailable) ^
      runtimeType.hashCode;
}

extension $UserAccountExtension on UserAccount {
  UserAccount copyWith(
      {int? id,
      String? email,
      Traveller? traveller,
      int? loyaltyTier,
      int? totalMiles,
      int? tokensAvailable}) {
    return UserAccount(
        id: id ?? this.id,
        email: email ?? this.email,
        traveller: traveller ?? this.traveller,
        loyaltyTier: loyaltyTier ?? this.loyaltyTier,
        totalMiles: totalMiles ?? this.totalMiles,
        tokensAvailable: tokensAvailable ?? this.tokensAvailable);
  }

  UserAccount copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? email,
      Wrapped<Traveller?>? traveller,
      Wrapped<int?>? loyaltyTier,
      Wrapped<int?>? totalMiles,
      Wrapped<int?>? tokensAvailable}) {
    return UserAccount(
        id: (id != null ? id.value : this.id),
        email: (email != null ? email.value : this.email),
        traveller: (traveller != null ? traveller.value : this.traveller),
        loyaltyTier:
            (loyaltyTier != null ? loyaltyTier.value : this.loyaltyTier),
        totalMiles: (totalMiles != null ? totalMiles.value : this.totalMiles),
        tokensAvailable: (tokensAvailable != null
            ? tokensAvailable.value
            : this.tokensAvailable));
  }
}

@JsonSerializable(explicitToJson: true)
class UserAccountRequest {
  const UserAccountRequest({
    required this.email,
    required this.traveller,
    this.loyaltyTier,
    this.totalMiles,
    this.tokensAvailable,
  });

  factory UserAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAccountRequestFromJson(json);

  static const toJsonFactory = _$UserAccountRequestToJson;
  Map<String, dynamic> toJson() => _$UserAccountRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'traveller')
  final TravellerRequest? traveller;
  @JsonKey(name: 'loyalty_tier')
  final int? loyaltyTier;
  @JsonKey(name: 'total_miles')
  final int? totalMiles;
  @JsonKey(name: 'tokens_available')
  final int? tokensAvailable;
  static const fromJsonFactory = _$UserAccountRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAccountRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.traveller, traveller) ||
                const DeepCollectionEquality()
                    .equals(other.traveller, traveller)) &&
            (identical(other.loyaltyTier, loyaltyTier) ||
                const DeepCollectionEquality()
                    .equals(other.loyaltyTier, loyaltyTier)) &&
            (identical(other.totalMiles, totalMiles) ||
                const DeepCollectionEquality()
                    .equals(other.totalMiles, totalMiles)) &&
            (identical(other.tokensAvailable, tokensAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.tokensAvailable, tokensAvailable)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(traveller) ^
      const DeepCollectionEquality().hash(loyaltyTier) ^
      const DeepCollectionEquality().hash(totalMiles) ^
      const DeepCollectionEquality().hash(tokensAvailable) ^
      runtimeType.hashCode;
}

extension $UserAccountRequestExtension on UserAccountRequest {
  UserAccountRequest copyWith(
      {String? email,
      TravellerRequest? traveller,
      int? loyaltyTier,
      int? totalMiles,
      int? tokensAvailable}) {
    return UserAccountRequest(
        email: email ?? this.email,
        traveller: traveller ?? this.traveller,
        loyaltyTier: loyaltyTier ?? this.loyaltyTier,
        totalMiles: totalMiles ?? this.totalMiles,
        tokensAvailable: tokensAvailable ?? this.tokensAvailable);
  }

  UserAccountRequest copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<TravellerRequest?>? traveller,
      Wrapped<int?>? loyaltyTier,
      Wrapped<int?>? totalMiles,
      Wrapped<int?>? tokensAvailable}) {
    return UserAccountRequest(
        email: (email != null ? email.value : this.email),
        traveller: (traveller != null ? traveller.value : this.traveller),
        loyaltyTier:
            (loyaltyTier != null ? loyaltyTier.value : this.loyaltyTier),
        totalMiles: (totalMiles != null ? totalMiles.value : this.totalMiles),
        tokensAvailable: (tokensAvailable != null
            ? tokensAvailable.value
            : this.tokensAvailable));
  }
}

@JsonSerializable(explicitToJson: true)
class UserArticleInteraction {
  const UserArticleInteraction({
    required this.id,
    this.read,
  });

  factory UserArticleInteraction.fromJson(Map<String, dynamic> json) =>
      _$UserArticleInteractionFromJson(json);

  static const toJsonFactory = _$UserArticleInteractionToJson;
  Map<String, dynamic> toJson() => _$UserArticleInteractionToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'read')
  final bool? read;
  static const fromJsonFactory = _$UserArticleInteractionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserArticleInteraction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(read) ^
      runtimeType.hashCode;
}

extension $UserArticleInteractionExtension on UserArticleInteraction {
  UserArticleInteraction copyWith({int? id, bool? read}) {
    return UserArticleInteraction(id: id ?? this.id, read: read ?? this.read);
  }

  UserArticleInteraction copyWithWrapped(
      {Wrapped<int>? id, Wrapped<bool?>? read}) {
    return UserArticleInteraction(
        id: (id != null ? id.value : this.id),
        read: (read != null ? read.value : this.read));
  }
}

@JsonSerializable(explicitToJson: true)
class UserArticleInteractionRequest {
  const UserArticleInteractionRequest({
    this.read,
  });

  factory UserArticleInteractionRequest.fromJson(Map<String, dynamic> json) =>
      _$UserArticleInteractionRequestFromJson(json);

  static const toJsonFactory = _$UserArticleInteractionRequestToJson;
  Map<String, dynamic> toJson() => _$UserArticleInteractionRequestToJson(this);

  @JsonKey(name: 'read')
  final bool? read;
  static const fromJsonFactory = _$UserArticleInteractionRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserArticleInteractionRequest &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(read) ^ runtimeType.hashCode;
}

extension $UserArticleInteractionRequestExtension
    on UserArticleInteractionRequest {
  UserArticleInteractionRequest copyWith({bool? read}) {
    return UserArticleInteractionRequest(read: read ?? this.read);
  }

  UserArticleInteractionRequest copyWithWrapped({Wrapped<bool?>? read}) {
    return UserArticleInteractionRequest(
        read: (read != null ? read.value : this.read));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationError {
  const ValidationError({
    required this.errors,
  });

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  static const toJsonFactory = _$ValidationErrorToJson;
  Map<String, dynamic> toJson() => _$ValidationErrorToJson(this);

  @JsonKey(name: 'errors', defaultValue: <FieldValidationError>[])
  final List<FieldValidationError> errors;
  static const fromJsonFactory = _$ValidationErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(errors) ^ runtimeType.hashCode;
}

extension $ValidationErrorExtension on ValidationError {
  ValidationError copyWith({List<FieldValidationError>? errors}) {
    return ValidationError(errors: errors ?? this.errors);
  }

  ValidationError copyWithWrapped(
      {Wrapped<List<FieldValidationError>>? errors}) {
    return ValidationError(
        errors: (errors != null ? errors.value : this.errors));
  }
}

String? blankEnumNullableToJson(enums.BlankEnum? blankEnum) {
  return blankEnum?.value;
}

String? blankEnumToJson(enums.BlankEnum blankEnum) {
  return blankEnum.value;
}

enums.BlankEnum blankEnumFromJson(
  Object? blankEnum, [
  enums.BlankEnum? defaultValue,
]) {
  return enums.BlankEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          blankEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.BlankEnum.swaggerGeneratedUnknown;
}

enums.BlankEnum? blankEnumNullableFromJson(
  Object? blankEnum, [
  enums.BlankEnum? defaultValue,
]) {
  if (blankEnum == null) {
    return null;
  }
  return enums.BlankEnum.values.firstWhereOrNull((e) => e.value == blankEnum) ??
      defaultValue;
}

List<String> blankEnumListToJson(List<enums.BlankEnum>? blankEnum) {
  if (blankEnum == null) {
    return [];
  }

  return blankEnum.map((e) => e.value!).toList();
}

List<enums.BlankEnum> blankEnumListFromJson(
  List? blankEnum, [
  List<enums.BlankEnum>? defaultValue,
]) {
  if (blankEnum == null) {
    return defaultValue ?? [];
  }

  return blankEnum.map((e) => blankEnumFromJson(e.toString())).toList();
}

List<enums.BlankEnum>? blankEnumNullableListFromJson(
  List? blankEnum, [
  List<enums.BlankEnum>? defaultValue,
]) {
  if (blankEnum == null) {
    return defaultValue;
  }

  return blankEnum.map((e) => blankEnumFromJson(e.toString())).toList();
}

String? countryEnumNullableToJson(enums.CountryEnum? countryEnum) {
  return countryEnum?.value;
}

String? countryEnumToJson(enums.CountryEnum countryEnum) {
  return countryEnum.value;
}

enums.CountryEnum countryEnumFromJson(
  Object? countryEnum, [
  enums.CountryEnum? defaultValue,
]) {
  return enums.CountryEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          countryEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CountryEnum.swaggerGeneratedUnknown;
}

enums.CountryEnum? countryEnumNullableFromJson(
  Object? countryEnum, [
  enums.CountryEnum? defaultValue,
]) {
  if (countryEnum == null) {
    return null;
  }
  return enums.CountryEnum.values
          .firstWhereOrNull((e) => e.value == countryEnum) ??
      defaultValue;
}

List<String> countryEnumListToJson(List<enums.CountryEnum>? countryEnum) {
  if (countryEnum == null) {
    return [];
  }

  return countryEnum.map((e) => e.value!).toList();
}

List<enums.CountryEnum> countryEnumListFromJson(
  List? countryEnum, [
  List<enums.CountryEnum>? defaultValue,
]) {
  if (countryEnum == null) {
    return defaultValue ?? [];
  }

  return countryEnum.map((e) => countryEnumFromJson(e.toString())).toList();
}

List<enums.CountryEnum>? countryEnumNullableListFromJson(
  List? countryEnum, [
  List<enums.CountryEnum>? defaultValue,
]) {
  if (countryEnum == null) {
    return defaultValue;
  }

  return countryEnum.map((e) => countryEnumFromJson(e.toString())).toList();
}

String? genderEnumNullableToJson(enums.GenderEnum? genderEnum) {
  return genderEnum?.value;
}

String? genderEnumToJson(enums.GenderEnum genderEnum) {
  return genderEnum.value;
}

enums.GenderEnum genderEnumFromJson(
  Object? genderEnum, [
  enums.GenderEnum? defaultValue,
]) {
  return enums.GenderEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          genderEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.GenderEnum.swaggerGeneratedUnknown;
}

enums.GenderEnum? genderEnumNullableFromJson(
  Object? genderEnum, [
  enums.GenderEnum? defaultValue,
]) {
  if (genderEnum == null) {
    return null;
  }
  return enums.GenderEnum.values
          .firstWhereOrNull((e) => e.value == genderEnum) ??
      defaultValue;
}

List<String> genderEnumListToJson(List<enums.GenderEnum>? genderEnum) {
  if (genderEnum == null) {
    return [];
  }

  return genderEnum.map((e) => e.value!).toList();
}

List<enums.GenderEnum> genderEnumListFromJson(
  List? genderEnum, [
  List<enums.GenderEnum>? defaultValue,
]) {
  if (genderEnum == null) {
    return defaultValue ?? [];
  }

  return genderEnum.map((e) => genderEnumFromJson(e.toString())).toList();
}

List<enums.GenderEnum>? genderEnumNullableListFromJson(
  List? genderEnum, [
  List<enums.GenderEnum>? defaultValue,
]) {
  if (genderEnum == null) {
    return defaultValue;
  }

  return genderEnum.map((e) => genderEnumFromJson(e.toString())).toList();
}

String? nullEnumNullableToJson(enums.NullEnum? nullEnum) {
  return nullEnum?.value;
}

String? nullEnumToJson(enums.NullEnum nullEnum) {
  return nullEnum.value;
}

enums.NullEnum nullEnumFromJson(
  Object? nullEnum, [
  enums.NullEnum? defaultValue,
]) {
  return enums.NullEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          nullEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.NullEnum.swaggerGeneratedUnknown;
}

enums.NullEnum? nullEnumNullableFromJson(
  Object? nullEnum, [
  enums.NullEnum? defaultValue,
]) {
  if (nullEnum == null) {
    return null;
  }
  return enums.NullEnum.values.firstWhereOrNull((e) => e.value == nullEnum) ??
      defaultValue;
}

List<String> nullEnumListToJson(List<enums.NullEnum>? nullEnum) {
  if (nullEnum == null) {
    return [];
  }

  return nullEnum.map((e) => e.value!).toList();
}

List<enums.NullEnum> nullEnumListFromJson(
  List? nullEnum, [
  List<enums.NullEnum>? defaultValue,
]) {
  if (nullEnum == null) {
    return defaultValue ?? [];
  }

  return nullEnum.map((e) => nullEnumFromJson(e.toString())).toList();
}

List<enums.NullEnum>? nullEnumNullableListFromJson(
  List? nullEnum, [
  List<enums.NullEnum>? defaultValue,
]) {
  if (nullEnum == null) {
    return defaultValue;
  }

  return nullEnum.map((e) => nullEnumFromJson(e.toString())).toList();
}

String? passengerTypeEnumNullableToJson(
    enums.PassengerTypeEnum? passengerTypeEnum) {
  return passengerTypeEnum?.value;
}

String? passengerTypeEnumToJson(enums.PassengerTypeEnum passengerTypeEnum) {
  return passengerTypeEnum.value;
}

enums.PassengerTypeEnum passengerTypeEnumFromJson(
  Object? passengerTypeEnum, [
  enums.PassengerTypeEnum? defaultValue,
]) {
  return enums.PassengerTypeEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          passengerTypeEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.PassengerTypeEnum.swaggerGeneratedUnknown;
}

enums.PassengerTypeEnum? passengerTypeEnumNullableFromJson(
  Object? passengerTypeEnum, [
  enums.PassengerTypeEnum? defaultValue,
]) {
  if (passengerTypeEnum == null) {
    return null;
  }
  return enums.PassengerTypeEnum.values
          .firstWhereOrNull((e) => e.value == passengerTypeEnum) ??
      defaultValue;
}

List<String> passengerTypeEnumListToJson(
    List<enums.PassengerTypeEnum>? passengerTypeEnum) {
  if (passengerTypeEnum == null) {
    return [];
  }

  return passengerTypeEnum.map((e) => e.value!).toList();
}

List<enums.PassengerTypeEnum> passengerTypeEnumListFromJson(
  List? passengerTypeEnum, [
  List<enums.PassengerTypeEnum>? defaultValue,
]) {
  if (passengerTypeEnum == null) {
    return defaultValue ?? [];
  }

  return passengerTypeEnum
      .map((e) => passengerTypeEnumFromJson(e.toString()))
      .toList();
}

List<enums.PassengerTypeEnum>? passengerTypeEnumNullableListFromJson(
  List? passengerTypeEnum, [
  List<enums.PassengerTypeEnum>? defaultValue,
]) {
  if (passengerTypeEnum == null) {
    return defaultValue;
  }

  return passengerTypeEnum
      .map((e) => passengerTypeEnumFromJson(e.toString()))
      .toList();
}

String? salutationEnumNullableToJson(enums.SalutationEnum? salutationEnum) {
  return salutationEnum?.value;
}

String? salutationEnumToJson(enums.SalutationEnum salutationEnum) {
  return salutationEnum.value;
}

enums.SalutationEnum salutationEnumFromJson(
  Object? salutationEnum, [
  enums.SalutationEnum? defaultValue,
]) {
  return enums.SalutationEnum.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          salutationEnum?.toString().toLowerCase()) ??
      defaultValue ??
      enums.SalutationEnum.swaggerGeneratedUnknown;
}

enums.SalutationEnum? salutationEnumNullableFromJson(
  Object? salutationEnum, [
  enums.SalutationEnum? defaultValue,
]) {
  if (salutationEnum == null) {
    return null;
  }
  return enums.SalutationEnum.values
          .firstWhereOrNull((e) => e.value == salutationEnum) ??
      defaultValue;
}

List<String> salutationEnumListToJson(
    List<enums.SalutationEnum>? salutationEnum) {
  if (salutationEnum == null) {
    return [];
  }

  return salutationEnum.map((e) => e.value!).toList();
}

List<enums.SalutationEnum> salutationEnumListFromJson(
  List? salutationEnum, [
  List<enums.SalutationEnum>? defaultValue,
]) {
  if (salutationEnum == null) {
    return defaultValue ?? [];
  }

  return salutationEnum
      .map((e) => salutationEnumFromJson(e.toString()))
      .toList();
}

List<enums.SalutationEnum>? salutationEnumNullableListFromJson(
  List? salutationEnum, [
  List<enums.SalutationEnum>? defaultValue,
]) {
  if (salutationEnum == null) {
    return defaultValue;
  }

  return salutationEnum
      .map((e) => salutationEnumFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
