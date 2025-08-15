import 'package:dio/dio.dart';

class ConsentService {
  final Dio dio = Dio(BaseOptions(baseUrl:'http://localhost:8080'));
  Future<List<dynamic>> getPolicyVersions() async {
    final res = await dio.get('/api/policy/versions');
    return res.data;
  }
  Future<void> acceptPolicies(String userId, String termsHash, String privacyHash) async {
    await dio.post('/api/auth/accept-policies', data: { 'userId': userId, 'termsHash': termsHash, 'privacyHash': privacyHash });
  }
}
