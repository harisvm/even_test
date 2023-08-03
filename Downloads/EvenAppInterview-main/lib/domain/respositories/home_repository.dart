import 'package:EvenAppInterview/constants/request_type.dart';
import 'package:EvenAppInterview/services/api_service.dart';

abstract class HomeRepository{
  Future<List<int>> getHomeData(String url);
}