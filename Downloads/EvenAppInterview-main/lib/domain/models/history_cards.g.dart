// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryCard _$HistoryCardFromJson(Map<String, dynamic> json) => HistoryCard(
      json['title'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$HistoryCardToJson(HistoryCard instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };

GetHistoryRequest _$GetHistoryRequestFromJson(Map<String, dynamic> json) =>
    GetHistoryRequest();

Map<String, dynamic> _$GetHistoryRequestToJson(GetHistoryRequest instance) =>
    <String, dynamic>{};

GetHistoryResponse _$GetHistoryResponseFromJson(Map<String, dynamic> json) =>
    GetHistoryResponse(
      (json['cards'] as List<dynamic>)
          .map((e) => HistoryCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetHistoryResponseToJson(GetHistoryResponse instance) =>
    <String, dynamic>{
      'cards': instance.cards.map((e) => e.toJson()).toList(),
    };
