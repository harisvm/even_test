import 'package:json_annotation/json_annotation.dart';

import 'utils.dart';

part 'history_cards.g.dart';

@JsonSerializable(explicitToJson: true)
class HistoryCard {
  const HistoryCard(this.title, this.content);

  final String title;
  final String content;

  factory HistoryCard.fromJson(Map<String, dynamic> json) =>
      _$HistoryCardFromJson(json);

  Json toJson() => _$HistoryCardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHistoryRequest {
  const GetHistoryRequest();

  factory GetHistoryRequest.fromJson(Json json) =>
      _$GetHistoryRequestFromJson(json);

  Json toJson() => _$GetHistoryRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetHistoryResponse {
  const GetHistoryResponse(this.cards);

  final List<HistoryCard> cards;

  factory GetHistoryResponse.fromJson(Json json) =>
      _$GetHistoryResponseFromJson(json);

  Json toJson() => _$GetHistoryResponseToJson(this);
}
