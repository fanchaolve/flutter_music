class MVData {
  int updateTime;
  List<Data> data;
  bool hasMore;
  int code;

  MVData({this.updateTime, this.data, this.hasMore, this.code});

  MVData.fromJson(Map<String, dynamic> json) {
    updateTime = json['updateTime'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    hasMore = json['hasMore'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updateTime'] = this.updateTime;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['hasMore'] = this.hasMore;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  int id;
  String cover;
  String name;
  int playCount;
  String briefDesc;
  String desc;
  String artistName;
  int artistId;
  int duration;
  int mark;
  int lastRank;
  int score;
  bool subed;
  List<Artists> artists;

  Data(
      {this.id,
        this.cover,
        this.name,
        this.playCount,
        this.briefDesc,
        this.desc,
        this.artistName,
        this.artistId,
        this.duration,
        this.mark,
        this.lastRank,
        this.score,
        this.subed,
        this.artists});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cover = json['cover'];
    name = json['name'];
    playCount = json['playCount'];
    briefDesc = json['briefDesc'];
    desc = json['desc'];
    artistName = json['artistName'];
    artistId = json['artistId'];
    duration = json['duration'];
    mark = json['mark'];
    lastRank = json['lastRank'];
    score = json['score'];
    subed = json['subed'];
    if (json['artists'] != null) {
      artists = new List<Artists>();
      json['artists'].forEach((v) {
        artists.add(new Artists.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['name'] = this.name;
    data['playCount'] = this.playCount;
    data['briefDesc'] = this.briefDesc;
    data['desc'] = this.desc;
    data['artistName'] = this.artistName;
    data['artistId'] = this.artistId;
    data['duration'] = this.duration;
    data['mark'] = this.mark;
    data['lastRank'] = this.lastRank;
    data['score'] = this.score;
    data['subed'] = this.subed;
    if (this.artists != null) {
      data['artists'] = this.artists.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Artists {
  int id;
  String name;

  Artists({this.id, this.name});

  Artists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
