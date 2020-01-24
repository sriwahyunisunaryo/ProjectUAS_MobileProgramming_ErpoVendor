import 'dart:convert';

class Project {
  int projectId;
  String title;
  String detail;
  int price;
  String type;
  String spec;
  String status;
  String client;
  DateTime start;
  DateTime end;

  Project({
    this.projectId,
    this.title,
    this.detail,
    this.price,
    this.type,
    this.spec,
    this.status,
    this.client,
    this.start,
    this.end,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        projectId: json["project_id"],
        title: json["title"],
        detail: json["detail"],
        price: json["price"],
        type: json["type"],
        spec: json["spec"],
        status: json["status"],
        client: json["client"],
        start: DateTime.parse(json["start"]),
        end: DateTime.parse(json["end"]),
      );

  /*  factory Project.fromJson(Map<String, dynamic> map) {
    return Project(
      projectId: map["project_id"],
      title: map["title"],
      detail: map["detail"],
      price: map["price"],
      type: map["type"],
      spec: map["spec"],
      status: map["status"],
      client: map["client"],
      start: map["start"],
      end: map["end"],
    );
  } */

  Map<String, dynamic> toJson() {
    return {
      "project_id": projectId,
      "title": title,
      "detail": detail,
      "price": price,
      "type": type,
      "spec": spec,
      "status": status,
      "client": client,
      "start": start.toIso8601String(),
      "end": end.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Project{project_id: $projectId, tittle: $title, detail: $detail, price: $price, type: $type, spec: $spec, status: $status, client: $client, start: $start, end: $end';
  }
}

/* fungsi untuk melakukan konversi respon dari API ke
class model */
List<Project> projectFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Project>.from(
      data.map((item) => Project.fromJson(item)).toList());
}

/* fungsi untuk melakukan konversi dari
class model ke JSON Format dalam bentuk String*/

String projectToJson(Project data) {
  final jsonData = data.toJson();
  return jsonEncode(jsonData);
}
