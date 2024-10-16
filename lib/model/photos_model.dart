class PhotosModel {
  String? id;
  String? createAt;
  String? color;
  Map<String, dynamic>? urls;

  PhotosModel({this.id, this.createAt, this.color, this.urls});

  PhotosModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createAt = json['created_at'];
    color = json['color'];
    urls = json['urls'];
  }
}