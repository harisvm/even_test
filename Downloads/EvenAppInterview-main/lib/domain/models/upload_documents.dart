import 'package:json_annotation/json_annotation.dart';

import 'utils.dart';

part 'upload_documents.g.dart';

@JsonSerializable(explicitToJson: true)
class Document {
  const Document(this.name, this.content);

  final String name;
  final String content;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  Json toJson() => _$DocumentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadDocumentRequest {
  const UploadDocumentRequest(this.documents);

  final List<Document> documents;

  factory UploadDocumentRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadDocumentRequestFromJson(json);

  Json toJson() => _$UploadDocumentRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UploadDocumentResponse {
  const UploadDocumentResponse();

  factory UploadDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadDocumentResponseFromJson(json);

  Json toJson() => _$UploadDocumentResponseToJson(this);
}
