import 'package:http/http.dart' show Client;
import 'package:vendor5/models/Penilaian.dart';
import 'package:vendor5/models/projects.dart';
import 'package:vendor5/models/vendors.dart';

class ApiService {
  final String baseUrl = "https://erpo-vendor.site/";
  Client client = Client();

  Future<List<Vendor>> getVendors() async {
    //final response = await client.Dio().get("$baseUrl/vendors");
    final response = await client.get("$baseUrl/api/vendor");
    if (response.statusCode == 200) {
      return vendorFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<bool> createVendor(Vendor data) async {
    final response = await client.post(
      "$baseUrl/api/vendor",
      headers: {"content-type": "application/json"},
      body: vendorToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<Project>> getProjects() async {
    //final response = await client.Dio().get("$baseUrl/vendors");
    final response = await client.get("$baseUrl/api/project");
    if (response.statusCode == 200) {
      return projectFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<List<Penilaian>> getPenilaians() async {
    //final response = await client.Dio().get("$baseUrl/vendors");
    final response = await client.get("$baseUrl/api/penilaian");
    if (response.statusCode == 200) {
      return penilaianFromJson(response.body);
    } else {
      return null;
    }
  }
}
