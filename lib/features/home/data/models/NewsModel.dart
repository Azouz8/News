import 'Source.dart';
class NewsModel {
  NewsModel({
    Source? source,
    String? author,
    String? title,
    dynamic description,
    String? url,
    dynamic urlToImage,
    String? publishedAt,
    dynamic content,
  }) {
    _source = source;
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage;
    _publishedAt = publishedAt;
    _content = content;
  }

  NewsModel.fromJson(dynamic json) {
    _source = json['source'] != null ? Source.fromJson(json['source']) : null;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }

  Source? _source;
  String? _author;
  String? _title;
  dynamic _description;
  String? _url;
  dynamic _urlToImage;
  String? _publishedAt;
  dynamic _content;

  Source? get source => _source;

  String? get author => _author;

  String? get title => _title;

  dynamic get description => _description;

  String? get url => _url;

  dynamic get urlToImage => _urlToImage;

  String? get publishedAt => _publishedAt;

  dynamic get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_source != null) {
      map['source'] = _source?.toJson();
    }
    map['author'] = _author;
    map['title'] = _title;
    map['description'] = _description;
    map['url'] = _url;
    map['urlToImage'] = _urlToImage;
    map['publishedAt'] = _publishedAt;
    map['content'] = _content;
    return map;
  }
}
