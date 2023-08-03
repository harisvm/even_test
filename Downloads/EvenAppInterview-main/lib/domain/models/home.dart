import 'package:json_annotation/json_annotation.dart';

import 'utils.dart';

part 'home.g.dart';

@JsonSerializable(explicitToJson: true)
class GetHomeRequest {
  const GetHomeRequest();

  factory GetHomeRequest.fromJson(Json json) => _$GetHomeRequestFromJson(json);

  Json toJson() => _$GetHomeRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHomeResponse {
  const GetHomeResponse(this.pendingDocumentsCount);

  final List<int> pendingDocumentsCount;

  factory GetHomeResponse.fromJson(Json json) =>
      _$GetHomeResponseFromJson(json);

  Json toJson() => _$GetHomeResponseToJson(this);
}
