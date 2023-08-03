// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHomeRequest _$GetHomeRequestFromJson(Map<String, dynamic> json) =>
    GetHomeRequest();

Map<String, dynamic> _$GetHomeRequestToJson(GetHomeRequest instance) =>
    <String, dynamic>{};

GetHomeResponse _$GetHomeResponseFromJson(Map<String, dynamic> json) =>
    GetHomeResponse(
      (json['pendingDocumentsCount'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$GetHomeResponseToJson(GetHomeResponse instance) =>
    <String, dynamic>{
      'pendingDocumentsCount': instance.pendingDocumentsCount,
    };
