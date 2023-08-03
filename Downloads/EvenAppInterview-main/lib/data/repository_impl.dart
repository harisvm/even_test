import 'package:EvenAppInterview/constants/request_type.dart';
import 'package:EvenAppInterview/domain/models/home.dart';
import 'package:EvenAppInterview/domain/models/utils.dart';
import 'package:EvenAppInterview/domain/respositories/home_repository.dart';
import 'package:EvenAppInterview/services/api_service.dart';

class HomeRepositoryImpl implements HomeRepository {
  final _apiService = ApiService();

  @override
  Future<List<int>> getHomeData(String url) async {
   Json result = await _apiService.request(RequestType.GET, url);
   GetHomeResponse res = GetHomeResponse.fromJson(result);
   return res.pendingDocumentsCount;
  }
}
