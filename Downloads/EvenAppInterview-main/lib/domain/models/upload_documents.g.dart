// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      json['name'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
    };

UploadDocumentRequest _$UploadDocumentRequestFromJson(
        Map<String, dynamic> json) =>
    UploadDocumentRequest(
      (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UploadDocumentRequestToJson(
        UploadDocumentRequest instance) =>
    <String, dynamic>{
      'documents': instance.documents.map((e) => e.toJson()).toList(),
    };

UploadDocumentResponse _$UploadDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    UploadDocumentResponse();

Map<String, dynamic> _$UploadDocumentResponseToJson(
        UploadDocumentResponse instance) =>
    <String, dynamic>{};
