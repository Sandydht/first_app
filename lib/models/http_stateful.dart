import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpStateful {
  String? id;
  String? name;
  String? job;
  String? createdAt;

  HttpStateful({ this.id, this.name, this.job, this.createdAt });

  static Future<HttpStateful> connectAPI(String name, String job) async {
    Uri url = Uri.parse('https://reqres.in/api/users');

    var response = await http.post(
      url, 
      body: {
        'name': name,
        'job': job
      }
    );

    var responseJson = json.decode(response.body);
    return HttpStateful(
      id: responseJson['id'],
      name: responseJson['name'],
      job: responseJson['job'],
      createdAt: responseJson['createdAt']
    );
  }
}
