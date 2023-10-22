// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      id: json['id'] as int,
      interactions: (json['interactions'] as List<dynamic>?)
              ?.map((e) =>
                  UserArticleInteraction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      title: json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      photo: json['photo'] as String?,
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'id': instance.id,
      'interactions': instance.interactions.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'photo': instance.photo,
      'tokens': instance.tokens,
    };

ArticleRequest _$ArticleRequestFromJson(Map<String, dynamic> json) =>
    ArticleRequest(
      interactions: (json['interactions'] as List<dynamic>?)
              ?.map((e) => UserArticleInteractionRequest.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      title: json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      photo: json['photo'] as String?,
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$ArticleRequestToJson(ArticleRequest instance) =>
    <String, dynamic>{
      'interactions': instance.interactions.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'photo': instance.photo,
      'tokens': instance.tokens,
    };

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) => AuthToken(
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthTokenToJson(AuthToken instance) => <String, dynamic>{
      'token': instance.token,
    };

AuthTokenRequest _$AuthTokenRequestFromJson(Map<String, dynamic> json) =>
    AuthTokenRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthTokenRequestToJson(AuthTokenRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

Badge _$BadgeFromJson(Map<String, dynamic> json) => Badge(
      id: json['id'] as int,
      claimed: json['claimed'] as bool,
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      description: json['description'] as String,
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'id': instance.id,
      'claimed': instance.claimed,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'description': instance.description,
      'tokens': instance.tokens,
    };

BadgeRequest _$BadgeRequestFromJson(Map<String, dynamic> json) => BadgeRequest(
      name: json['name'] as String,
      iconUrl: json['icon_url'] as String,
      description: json['description'] as String,
      tokens: json['tokens'] as int,
    );

Map<String, dynamic> _$BadgeRequestToJson(BadgeRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'description': instance.description,
      'tokens': instance.tokens,
    };

BookedSegments _$BookedSegmentsFromJson(Map<String, dynamic> json) =>
    BookedSegments(
      id: json['id'] as int,
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      flightNumber: json['flight_number'] as String,
      flightDate: DateTime.parse(json['flight_date'] as String),
      airlineCode: json['airline_code'] as String,
      departureDate: DateTime.parse(json['departure_date'] as String),
      arrivalDate: DateTime.parse(json['arrival_date'] as String),
      bookingClass: json['booking_class'] as String,
      price: json['price'] as String,
      taxPercentage: json['tax_percentage'] as String,
      ticket: json['ticket'] as String?,
    );

Map<String, dynamic> _$BookedSegmentsToJson(BookedSegments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'origin': instance.origin,
      'destination': instance.destination,
      'flight_number': instance.flightNumber,
      'flight_date': _dateToJson(instance.flightDate),
      'airline_code': instance.airlineCode,
      'departure_date': instance.departureDate.toIso8601String(),
      'arrival_date': instance.arrivalDate.toIso8601String(),
      'booking_class': instance.bookingClass,
      'price': instance.price,
      'tax_percentage': instance.taxPercentage,
      'ticket': instance.ticket,
    };

BookedSegmentsRequest _$BookedSegmentsRequestFromJson(
        Map<String, dynamic> json) =>
    BookedSegmentsRequest(
      origin: json['origin'] as String,
      destination: json['destination'] as String,
      flightNumber: json['flight_number'] as String,
      flightDate: DateTime.parse(json['flight_date'] as String),
      airlineCode: json['airline_code'] as String,
      departureDate: DateTime.parse(json['departure_date'] as String),
      arrivalDate: DateTime.parse(json['arrival_date'] as String),
      bookingClass: json['booking_class'] as String,
      price: json['price'] as String,
      taxPercentage: json['tax_percentage'] as String,
      ticket: json['ticket'] as String?,
    );

Map<String, dynamic> _$BookedSegmentsRequestToJson(
        BookedSegmentsRequest instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'flight_number': instance.flightNumber,
      'flight_date': _dateToJson(instance.flightDate),
      'airline_code': instance.airlineCode,
      'departure_date': instance.departureDate.toIso8601String(),
      'arrival_date': instance.arrivalDate.toIso8601String(),
      'booking_class': instance.bookingClass,
      'price': instance.price,
      'tax_percentage': instance.taxPercentage,
      'ticket': instance.ticket,
    };

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      bookingReference: json['booking_reference'] as String,
      user: UserAccount.fromJson(json['user'] as Map<String, dynamic>),
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalPrice: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'booking_reference': instance.bookingReference,
      'user': instance.user.toJson(),
      'tickets': instance.tickets.map((e) => e.toJson()).toList(),
      'total_price': instance.totalPrice,
    };

BookingRequest _$BookingRequestFromJson(Map<String, dynamic> json) =>
    BookingRequest(
      bookingReference: json['booking_reference'] as String,
    );

Map<String, dynamic> _$BookingRequestToJson(BookingRequest instance) =>
    <String, dynamic>{
      'booking_reference': instance.bookingReference,
    };

FieldValidationError _$FieldValidationErrorFromJson(
        Map<String, dynamic> json) =>
    FieldValidationError(
      field: json['field'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$FieldValidationErrorToJson(
        FieldValidationError instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };

ForbiddenError _$ForbiddenErrorFromJson(Map<String, dynamic> json) =>
    ForbiddenError(
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$ForbiddenErrorToJson(ForbiddenError instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };

NotFoundError _$NotFoundErrorFromJson(Map<String, dynamic> json) =>
    NotFoundError(
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$NotFoundErrorToJson(NotFoundError instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };

PaginatedArticleList _$PaginatedArticleListFromJson(
        Map<String, dynamic> json) =>
    PaginatedArticleList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedArticleListToJson(
        PaginatedArticleList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PaginatedBadgeList _$PaginatedBadgeListFromJson(Map<String, dynamic> json) =>
    PaginatedBadgeList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedBadgeListToJson(PaginatedBadgeList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PaginatedBookedSegmentsList _$PaginatedBookedSegmentsListFromJson(
        Map<String, dynamic> json) =>
    PaginatedBookedSegmentsList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => BookedSegments.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedBookedSegmentsListToJson(
        PaginatedBookedSegmentsList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PaginatedBookingList _$PaginatedBookingListFromJson(
        Map<String, dynamic> json) =>
    PaginatedBookingList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedBookingListToJson(
        PaginatedBookingList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PaginatedRewardList _$PaginatedRewardListFromJson(Map<String, dynamic> json) =>
    PaginatedRewardList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Reward.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedRewardListToJson(
        PaginatedRewardList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

PaginatedUserAccountList _$PaginatedUserAccountListFromJson(
        Map<String, dynamic> json) =>
    PaginatedUserAccountList(
      count: json['count'] as int?,
      previous: json['previous'] as int?,
      current: json['current'] as int?,
      next: json['next'] as int?,
      last: json['last'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => UserAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PaginatedUserAccountListToJson(
        PaginatedUserAccountList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'previous': instance.previous,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };

PartnerRequest _$PartnerRequestFromJson(Map<String, dynamic> json) =>
    PartnerRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$PartnerRequestToJson(PartnerRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };

PatchedArticleRequest _$PatchedArticleRequestFromJson(
        Map<String, dynamic> json) =>
    PatchedArticleRequest(
      interactions: (json['interactions'] as List<dynamic>?)
              ?.map((e) => UserArticleInteractionRequest.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      title: json['title'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      photo: json['photo'] as String?,
      tokens: json['tokens'] as int?,
    );

Map<String, dynamic> _$PatchedArticleRequestToJson(
        PatchedArticleRequest instance) =>
    <String, dynamic>{
      'interactions': instance.interactions?.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'photo': instance.photo,
      'tokens': instance.tokens,
    };

PatchedBadgeRequest _$PatchedBadgeRequestFromJson(Map<String, dynamic> json) =>
    PatchedBadgeRequest(
      name: json['name'] as String?,
      iconUrl: json['icon_url'] as String?,
      description: json['description'] as String?,
      tokens: json['tokens'] as int?,
    );

Map<String, dynamic> _$PatchedBadgeRequestToJson(
        PatchedBadgeRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'description': instance.description,
      'tokens': instance.tokens,
    };

PatchedBookedSegmentsRequest _$PatchedBookedSegmentsRequestFromJson(
        Map<String, dynamic> json) =>
    PatchedBookedSegmentsRequest(
      origin: json['origin'] as String?,
      destination: json['destination'] as String?,
      flightNumber: json['flight_number'] as String?,
      flightDate: json['flight_date'] == null
          ? null
          : DateTime.parse(json['flight_date'] as String),
      airlineCode: json['airline_code'] as String?,
      departureDate: json['departure_date'] == null
          ? null
          : DateTime.parse(json['departure_date'] as String),
      arrivalDate: json['arrival_date'] == null
          ? null
          : DateTime.parse(json['arrival_date'] as String),
      bookingClass: json['booking_class'] as String?,
      price: json['price'] as String?,
      taxPercentage: json['tax_percentage'] as String?,
      ticket: json['ticket'] as String?,
    );

Map<String, dynamic> _$PatchedBookedSegmentsRequestToJson(
        PatchedBookedSegmentsRequest instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'flight_number': instance.flightNumber,
      'flight_date': _dateToJson(instance.flightDate),
      'airline_code': instance.airlineCode,
      'departure_date': instance.departureDate?.toIso8601String(),
      'arrival_date': instance.arrivalDate?.toIso8601String(),
      'booking_class': instance.bookingClass,
      'price': instance.price,
      'tax_percentage': instance.taxPercentage,
      'ticket': instance.ticket,
    };

PatchedBookingRequest _$PatchedBookingRequestFromJson(
        Map<String, dynamic> json) =>
    PatchedBookingRequest(
      bookingReference: json['booking_reference'] as String?,
    );

Map<String, dynamic> _$PatchedBookingRequestToJson(
        PatchedBookingRequest instance) =>
    <String, dynamic>{
      'booking_reference': instance.bookingReference,
    };

PatchedRewardRequest _$PatchedRewardRequestFromJson(
        Map<String, dynamic> json) =>
    PatchedRewardRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      tokens: json['tokens'] as int?,
      imageUrl: json['image_url'] as String?,
      unlimited: json['unlimited'] as bool?,
    );

Map<String, dynamic> _$PatchedRewardRequestToJson(
        PatchedRewardRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tokens': instance.tokens,
      'image_url': instance.imageUrl,
      'unlimited': instance.unlimited,
    };

PatchedUserAccountRequest _$PatchedUserAccountRequestFromJson(
        Map<String, dynamic> json) =>
    PatchedUserAccountRequest(
      email: json['email'] as String?,
      traveller: json['traveller'] == null
          ? null
          : TravellerRequest.fromJson(
              json['traveller'] as Map<String, dynamic>),
      loyaltyTier: json['loyalty_tier'] as int?,
      totalMiles: json['total_miles'] as int?,
      tokensAvailable: json['tokens_available'] as int?,
    );

Map<String, dynamic> _$PatchedUserAccountRequestToJson(
        PatchedUserAccountRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'traveller': instance.traveller?.toJson(),
      'loyalty_tier': instance.loyaltyTier,
      'total_miles': instance.totalMiles,
      'tokens_available': instance.tokensAvailable,
    };

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      id: json['id'] as int,
      partner: Partner.fromJson(json['partner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      tokens: json['tokens'] as int,
      imageUrl: json['image_url'] as String,
      unlimited: json['unlimited'] as bool?,
    );

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'id': instance.id,
      'partner': instance.partner.toJson(),
      'name': instance.name,
      'description': instance.description,
      'tokens': instance.tokens,
      'image_url': instance.imageUrl,
      'unlimited': instance.unlimited,
    };

RewardRequest _$RewardRequestFromJson(Map<String, dynamic> json) =>
    RewardRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      tokens: json['tokens'] as int,
      imageUrl: json['image_url'] as String,
      unlimited: json['unlimited'] as bool?,
    );

Map<String, dynamic> _$RewardRequestToJson(RewardRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tokens': instance.tokens,
      'image_url': instance.imageUrl,
      'unlimited': instance.unlimited,
    };

Ticket _$TicketFromJson(Map<String, dynamic> json) => Ticket(
      ticketNumber: json['ticket_number'] as String,
      traveller: Traveller.fromJson(json['traveller'] as Map<String, dynamic>),
      bookedSegments: (json['booked_segments'] as List<dynamic>?)
              ?.map((e) => BookedSegments.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalPrice: (json['total_price'] as num).toDouble(),
      ticketingAirline: json['ticketing_airline'] as String,
      ticketStatus: json['ticket_status'] as String,
      issuedDate: DateTime.parse(json['issued_date'] as String),
    );

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'traveller': instance.traveller.toJson(),
      'booked_segments':
          instance.bookedSegments.map((e) => e.toJson()).toList(),
      'total_price': instance.totalPrice,
      'ticketing_airline': instance.ticketingAirline,
      'ticket_status': instance.ticketStatus,
      'issued_date': _dateToJson(instance.issuedDate),
    };

TicketRequest _$TicketRequestFromJson(Map<String, dynamic> json) =>
    TicketRequest(
      ticketNumber: json['ticket_number'] as String,
      ticketingAirline: json['ticketing_airline'] as String,
      ticketStatus: json['ticket_status'] as String,
      issuedDate: DateTime.parse(json['issued_date'] as String),
    );

Map<String, dynamic> _$TicketRequestToJson(TicketRequest instance) =>
    <String, dynamic>{
      'ticket_number': instance.ticketNumber,
      'ticketing_airline': instance.ticketingAirline,
      'ticket_status': instance.ticketStatus,
      'issued_date': _dateToJson(instance.issuedDate),
    };

Traveller _$TravellerFromJson(Map<String, dynamic> json) => Traveller(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String,
      salutation: salutationEnumNullableFromJson(json['salutation']),
      avatar: json['avatar'] as String?,
      gender: genderEnumNullableFromJson(json['gender']),
      passengerType: passengerTypeEnumNullableFromJson(json['passenger_type']),
      frequentFlyerNumber: json['frequent_flyer_number'] as String?,
      street: json['street'] as String,
      city: json['city'] as String,
      postalCode: json['postal_code'] as String,
      country: json['country'],
    );

Map<String, dynamic> _$TravellerToJson(Traveller instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'salutation': salutationEnumNullableToJson(instance.salutation),
      'avatar': instance.avatar,
      'gender': genderEnumNullableToJson(instance.gender),
      'passenger_type': passengerTypeEnumNullableToJson(instance.passengerType),
      'frequent_flyer_number': instance.frequentFlyerNumber,
      'street': instance.street,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'country': instance.country,
    };

TravellerRequest _$TravellerRequestFromJson(Map<String, dynamic> json) =>
    TravellerRequest(
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String,
      salutation: salutationEnumNullableFromJson(json['salutation']),
      avatar: json['avatar'] as String?,
      gender: genderEnumNullableFromJson(json['gender']),
      passengerType: passengerTypeEnumNullableFromJson(json['passenger_type']),
      frequentFlyerNumber: json['frequent_flyer_number'] as String?,
      street: json['street'] as String,
      city: json['city'] as String,
      postalCode: json['postal_code'] as String,
      country: json['country'],
    );

Map<String, dynamic> _$TravellerRequestToJson(TravellerRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'salutation': salutationEnumNullableToJson(instance.salutation),
      'avatar': instance.avatar,
      'gender': genderEnumNullableToJson(instance.gender),
      'passenger_type': passengerTypeEnumNullableToJson(instance.passengerType),
      'frequent_flyer_number': instance.frequentFlyerNumber,
      'street': instance.street,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'country': instance.country,
    };

UnauthenticatedError _$UnauthenticatedErrorFromJson(
        Map<String, dynamic> json) =>
    UnauthenticatedError(
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$UnauthenticatedErrorToJson(
        UnauthenticatedError instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => UserAccount(
      id: json['id'] as int,
      email: json['email'] as String,
      traveller: json['traveller'] == null
          ? null
          : Traveller.fromJson(json['traveller'] as Map<String, dynamic>),
      loyaltyTier: json['loyalty_tier'] as int?,
      totalMiles: json['total_miles'] as int?,
      tokensAvailable: json['tokens_available'] as int?,
    );

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'traveller': instance.traveller?.toJson(),
      'loyalty_tier': instance.loyaltyTier,
      'total_miles': instance.totalMiles,
      'tokens_available': instance.tokensAvailable,
    };

UserAccountRequest _$UserAccountRequestFromJson(Map<String, dynamic> json) =>
    UserAccountRequest(
      email: json['email'] as String,
      traveller: json['traveller'] == null
          ? null
          : TravellerRequest.fromJson(
              json['traveller'] as Map<String, dynamic>),
      loyaltyTier: json['loyalty_tier'] as int?,
      totalMiles: json['total_miles'] as int?,
      tokensAvailable: json['tokens_available'] as int?,
    );

Map<String, dynamic> _$UserAccountRequestToJson(UserAccountRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'traveller': instance.traveller?.toJson(),
      'loyalty_tier': instance.loyaltyTier,
      'total_miles': instance.totalMiles,
      'tokens_available': instance.tokensAvailable,
    };

UserArticleInteraction _$UserArticleInteractionFromJson(
        Map<String, dynamic> json) =>
    UserArticleInteraction(
      id: json['id'] as int,
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$UserArticleInteractionToJson(
        UserArticleInteraction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'read': instance.read,
    };

UserArticleInteractionRequest _$UserArticleInteractionRequestFromJson(
        Map<String, dynamic> json) =>
    UserArticleInteractionRequest(
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$UserArticleInteractionRequestToJson(
        UserArticleInteractionRequest instance) =>
    <String, dynamic>{
      'read': instance.read,
    };

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) =>
    ValidationError(
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) =>
                  FieldValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'errors': instance.errors.map((e) => e.toJson()).toList(),
    };
