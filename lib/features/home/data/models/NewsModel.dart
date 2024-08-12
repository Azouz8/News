class NewsModel {
  NewsModel({
    String? articleId,
    String? title,
    String? link,
    dynamic keywords,
    List<String>? creator,
    dynamic videoUrl,
    String? description,
    String? content,
    String? pubDate,
    String? imageUrl,
    String? sourceId,
    int? sourcePriority,
    String? sourceName,
    String? sourceUrl,
    String? sourceIcon,
    String? language,
    List<String>? country,
    List<String>? category,
    String? aiTag,
    String? sentiment,
    String? sentimentStats,
    String? aiRegion,
    String? aiOrg,
    bool? duplicate,
  }) {
    _articleId = articleId;
    _title = title;
    _link = link;
    _keywords = keywords;
    _creator = creator;
    _videoUrl = videoUrl;
    _description = description;
    _content = content;
    _pubDate = pubDate;
    _imageUrl = imageUrl;
    _sourceId = sourceId;
    _sourcePriority = sourcePriority;
    _sourceName = sourceName;
    _sourceUrl = sourceUrl;
    _sourceIcon = sourceIcon;
    _language = language;
    _country = country;
    _category = category;
    _aiTag = aiTag;
    _sentiment = sentiment;
    _sentimentStats = sentimentStats;
    _aiRegion = aiRegion;
    _aiOrg = aiOrg;
    _duplicate = duplicate;
  }

  NewsModel.fromJson(dynamic json) {
    _articleId = json['article_id'];
    _title = json['title'];
    _link = json['link'];
    _keywords = json['keywords'];
    _creator = json['creator']?.cast<String>();
    _videoUrl = json['video_url'];
    _description = json['description'];
    _content = json['content'];
    _pubDate = json['pubDate'];
    _imageUrl = json['image_url'];
    _sourceId = json['source_id'];
    _sourcePriority = json['source_priority'];
    _sourceName = json['source_name'];
    _sourceUrl = json['source_url'];
    _sourceIcon = json['source_icon'];
    _language = json['language'];
    _country = json['country'] != null ? json['country'].cast<String>() : [];
    _category = json['category'] != null ? json['category'].cast<String>() : [];
    _aiTag = json['ai_tag'];
    _sentiment = json['sentiment'];
    _sentimentStats = json['sentiment_stats'];
    _aiRegion = json['ai_region'];
    _aiOrg = json['ai_org'];
    _duplicate = json['duplicate'];
  }

  String? _articleId;
  String? _title;
  String? _link;
  dynamic _keywords;
  List<String>? _creator;
  dynamic _videoUrl;
  String? _description;
  String? _content;
  String? _pubDate;
  String? _imageUrl;
  String? _sourceId;
  int? _sourcePriority;
  String? _sourceName;
  String? _sourceUrl;
  String? _sourceIcon;
  String? _language;
  List<String>? _country;
  List<String>? _category;
  String? _aiTag;
  String? _sentiment;
  String? _sentimentStats;
  String? _aiRegion;
  String? _aiOrg;
  bool? _duplicate;

  String? get articleId => _articleId;

  String? get title => _title;

  String? get link => _link;

  dynamic get keywords => _keywords;

  List<String>? get creator => _creator;

  dynamic get videoUrl => _videoUrl;

  String? get description => _description;

  String? get content => _content;

  String? get pubDate => _pubDate;

  String? get imageUrl => _imageUrl;

  String? get sourceId => _sourceId;

  int? get sourcePriority => _sourcePriority;

  String? get sourceName => _sourceName;

  String? get sourceUrl => _sourceUrl;

  String? get sourceIcon => _sourceIcon;

  String? get language => _language;

  List<String>? get country => _country;

  List<String>? get category => _category;

  String? get aiTag => _aiTag;

  String? get sentiment => _sentiment;

  String? get sentimentStats => _sentimentStats;

  String? get aiRegion => _aiRegion;

  String? get aiOrg => _aiOrg;

  bool? get duplicate => _duplicate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['article_id'] = _articleId;
    map['title'] = _title;
    map['link'] = _link;
    map['keywords'] = _keywords;
    map['creator'] = _creator;
    map['video_url'] = _videoUrl;
    map['description'] = _description;
    map['content'] = _content;
    map['pubDate'] = _pubDate;
    map['image_url'] = _imageUrl;
    map['source_id'] = _sourceId;
    map['source_priority'] = _sourcePriority;
    map['source_name'] = _sourceName;
    map['source_url'] = _sourceUrl;
    map['source_icon'] = _sourceIcon;
    map['language'] = _language;
    map['country'] = _country;
    map['category'] = _category;
    map['ai_tag'] = _aiTag;
    map['sentiment'] = _sentiment;
    map['sentiment_stats'] = _sentimentStats;
    map['ai_region'] = _aiRegion;
    map['ai_org'] = _aiOrg;
    map['duplicate'] = _duplicate;
    return map;
  }
}
