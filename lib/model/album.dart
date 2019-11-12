class AlbumData {
  int _total;
  List<Albums> _albums;
  int _code;

  AlbumData({int total, List<Albums> albums, int code}) {
    this._total = total;
    this._albums = albums;
    this._code = code;
  }

  int get total => _total;
  set total(int total) => _total = total;
  List<Albums> get albums => _albums;
  set albums(List<Albums> albums) => _albums = albums;
  int get code => _code;
  set code(int code) => _code = code;

  AlbumData.fromJson(Map<String, dynamic> json) {
    _total = json['total'];
    if (json['albums'] != null) {
      _albums = new List<Albums>();
      json['albums'].forEach((v) {
        _albums.add(new Albums.fromJson(v));
      });
    }
    _code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    if (this._albums != null) {
      data['albums'] = this._albums.map((v) => v.toJson()).toList();
    }
    data['code'] = this._code;
    return data;
  }
}

class Albums {
  List<dynamic> _songs;
  bool _paid;
  bool _onSale;
  int _mark;
  String _tags;
  int _status;
  String _subType;
  String _description;
  int _copyrightId;

  List<Artists> _artists;
  int _picId;
  Artist _artist;
  String _briefDesc;
  String _commentThreadId;
  int _publishTime;
  String _picUrl;
  String _company;
  String _blurPicUrl;
  int _companyId;
  int _pic;
  String _name;
  int _id;
  String _type;
  int _size;
  String _picIdStr;
  List<String> _transNames;

  Albums(
      {List<Null> songs,
        bool paid,
        bool onSale,
        int mark,
        String tags,
        int status,
        String subType,
        String description,
        int copyrightId,
        List<Null> alias,
        List<Artists> artists,
        int picId,
        Artist artist,
        String briefDesc,
        String commentThreadId,
        int publishTime,
        String picUrl,
        String company,
        String blurPicUrl,
        int companyId,
        int pic,
        String name,
        int id,
        String type,
        int size,
        String picIdStr,
        List<String> transNames}) {
    this._songs = songs;
    this._paid = paid;
    this._onSale = onSale;
    this._mark = mark;
    this._tags = tags;
    this._status = status;
    this._subType = subType;
    this._description = description;
    this._copyrightId = copyrightId;

    this._artists = artists;
    this._picId = picId;
    this._artist = artist;
    this._briefDesc = briefDesc;
    this._commentThreadId = commentThreadId;
    this._publishTime = publishTime;
    this._picUrl = picUrl;
    this._company = company;
    this._blurPicUrl = blurPicUrl;
    this._companyId = companyId;
    this._pic = pic;
    this._name = name;
    this._id = id;
    this._type = type;
    this._size = size;
    this._picIdStr = picIdStr;
    this._transNames = transNames;
  }

  List<Null> get songs => _songs;
  set songs(List<Null> songs) => _songs = songs;
  bool get paid => _paid;
  set paid(bool paid) => _paid = paid;
  bool get onSale => _onSale;
  set onSale(bool onSale) => _onSale = onSale;
  int get mark => _mark;
  set mark(int mark) => _mark = mark;
  String get tags => _tags;
  set tags(String tags) => _tags = tags;
  int get status => _status;
  set status(int status) => _status = status;
  String get subType => _subType;
  set subType(String subType) => _subType = subType;
  String get description => _description;
  set description(String description) => _description = description;
  int get copyrightId => _copyrightId;
  set copyrightId(int copyrightId) => _copyrightId = copyrightId;

  List<Artists> get artists => _artists;
  set artists(List<Artists> artists) => _artists = artists;
  int get picId => _picId;
  set picId(int picId) => _picId = picId;
  Artist get artist => _artist;
  set artist(Artist artist) => _artist = artist;
  String get briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  String get commentThreadId => _commentThreadId;
  set commentThreadId(String commentThreadId) =>
      _commentThreadId = commentThreadId;
  int get publishTime => _publishTime;
  set publishTime(int publishTime) => _publishTime = publishTime;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get company => _company;
  set company(String company) => _company = company;
  String get blurPicUrl => _blurPicUrl;
  set blurPicUrl(String blurPicUrl) => _blurPicUrl = blurPicUrl;
  int get companyId => _companyId;
  set companyId(int companyId) => _companyId = companyId;
  int get pic => _pic;
  set pic(int pic) => _pic = pic;
  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  String get type => _type;
  set type(String type) => _type = type;
  int get size => _size;
  set size(int size) => _size = size;
  String get picIdStr => _picIdStr;
  set picIdStr(String picIdStr) => _picIdStr = picIdStr;
  List<String> get transNames => _transNames;
  set transNames(List<String> transNames) => _transNames = transNames;

  Albums.fromJson(Map<String, dynamic> json) {
    if (json['songs'] != null) {
      _songs = new List<dynamic>();

    }
    _paid = json['paid'];
    _onSale = json['onSale'];
    _mark = json['mark'];
    _tags = json['tags'];
    _status = json['status'];
    _subType = json['subType'];
    _description = json['description'];
    _copyrightId = json['copyrightId'];

    if (json['artists'] != null) {
      _artists = new List<Artists>();
      json['artists'].forEach((v) {
        _artists.add(new Artists.fromJson(v));
      });
    }
    _picId = json['picId'];
    _artist =
    json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    _briefDesc = json['briefDesc'];
    _commentThreadId = json['commentThreadId'];
    _publishTime = json['publishTime'];
    _picUrl = json['picUrl'];
    _company = json['company'];
    _blurPicUrl = json['blurPicUrl'];
    _companyId = json['companyId'];
    _pic = json['pic'];
    _name = json['name'];
    _id = json['id'];
    _type = json['type'];
    _size = json['size'];
    _picIdStr = json['picId_str'];
    _transNames = json['transNames']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._songs != null) {
      data['songs'] = this._songs.map((v) => v.toJson()).toList();
    }
    data['paid'] = this._paid;
    data['onSale'] = this._onSale;
    data['mark'] = this._mark;
    data['tags'] = this._tags;
    data['status'] = this._status;
    data['subType'] = this._subType;
    data['description'] = this._description;
    data['copyrightId'] = this._copyrightId;

    if (this._artists != null) {
      data['artists'] = this._artists.map((v) => v.toJson()).toList();
    }
    data['picId'] = this._picId;
    if (this._artist != null) {
      data['artist'] = this._artist.toJson();
    }
    data['briefDesc'] = this._briefDesc;
    data['commentThreadId'] = this._commentThreadId;
    data['publishTime'] = this._publishTime;
    data['picUrl'] = this._picUrl;
    data['company'] = this._company;
    data['blurPicUrl'] = this._blurPicUrl;
    data['companyId'] = this._companyId;
    data['pic'] = this._pic;
    data['name'] = this._name;
    data['id'] = this._id;
    data['type'] = this._type;
    data['size'] = this._size;
    data['picId_str'] = this._picIdStr;
    data['transNames'] = this._transNames;
    return data;
  }
}

class Artists {
  int _img1v1Id;
  int _topicPerson;
  bool _followed;

  int _picId;
  int _albumSize;
  String _briefDesc;
  int _musicSize;
  String _img1v1Url;
  String _trans;
  String _picUrl;
  String _name;
  int _id;
  String _img1v1IdStr;

  Artists(
      {int img1v1Id,
        int topicPerson,
        bool followed,
        List<Null> alias,
        int picId,
        int albumSize,
        String briefDesc,
        int musicSize,
        String img1v1Url,
        String trans,
        String picUrl,
        String name,
        int id,
        String img1v1IdStr}) {
    this._img1v1Id = img1v1Id;
    this._topicPerson = topicPerson;
    this._followed = followed;

    this._picId = picId;
    this._albumSize = albumSize;
    this._briefDesc = briefDesc;
    this._musicSize = musicSize;
    this._img1v1Url = img1v1Url;
    this._trans = trans;
    this._picUrl = picUrl;
    this._name = name;
    this._id = id;
    this._img1v1IdStr = img1v1IdStr;
  }

  int get img1v1Id => _img1v1Id;
  set img1v1Id(int img1v1Id) => _img1v1Id = img1v1Id;
  int get topicPerson => _topicPerson;
  set topicPerson(int topicPerson) => _topicPerson = topicPerson;
  bool get followed => _followed;
  set followed(bool followed) => _followed = followed;

  int get picId => _picId;
  set picId(int picId) => _picId = picId;
  int get albumSize => _albumSize;
  set albumSize(int albumSize) => _albumSize = albumSize;
  String get briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  int get musicSize => _musicSize;
  set musicSize(int musicSize) => _musicSize = musicSize;
  String get img1v1Url => _img1v1Url;
  set img1v1Url(String img1v1Url) => _img1v1Url = img1v1Url;
  String get trans => _trans;
  set trans(String trans) => _trans = trans;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  String get img1v1IdStr => _img1v1IdStr;
  set img1v1IdStr(String img1v1IdStr) => _img1v1IdStr = img1v1IdStr;

  Artists.fromJson(Map<String, dynamic> json) {
    _img1v1Id = json['img1v1Id'];
    _topicPerson = json['topicPerson'];
    _followed = json['followed'];

    _picId = json['picId'];
    _albumSize = json['albumSize'];
    _briefDesc = json['briefDesc'];
    _musicSize = json['musicSize'];
    _img1v1Url = json['img1v1Url'];
    _trans = json['trans'];
    _picUrl = json['picUrl'];
    _name = json['name'];
    _id = json['id'];
    _img1v1IdStr = json['img1v1Id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img1v1Id'] = this._img1v1Id;
    data['topicPerson'] = this._topicPerson;
    data['followed'] = this._followed;

    data['picId'] = this._picId;
    data['albumSize'] = this._albumSize;
    data['briefDesc'] = this._briefDesc;
    data['musicSize'] = this._musicSize;
    data['img1v1Url'] = this._img1v1Url;
    data['trans'] = this._trans;
    data['picUrl'] = this._picUrl;
    data['name'] = this._name;
    data['id'] = this._id;
    data['img1v1Id_str'] = this._img1v1IdStr;
    return data;
  }
}

class Artist {
  int _img1v1Id;
  int _topicPerson;
  bool _followed;

  int _picId;
  int _albumSize;
  String _briefDesc;
  int _musicSize;
  String _img1v1Url;
  String _trans;
  String _picUrl;
  String _name;
  int _id;
  List<String> _transNames;
  String _img1v1IdStr;

  Artist(
      {int img1v1Id,
        int topicPerson,
        bool followed,
        List<Null> alias,
        int picId,
        int albumSize,
        String briefDesc,
        int musicSize,
        String img1v1Url,
        String trans,
        String picUrl,
        String name,
        int id,
        List<String> transNames,
        String img1v1IdStr}) {
    this._img1v1Id = img1v1Id;
    this._topicPerson = topicPerson;
    this._followed = followed;

    this._picId = picId;
    this._albumSize = albumSize;
    this._briefDesc = briefDesc;
    this._musicSize = musicSize;
    this._img1v1Url = img1v1Url;
    this._trans = trans;
    this._picUrl = picUrl;
    this._name = name;
    this._id = id;
    this._transNames = transNames;
    this._img1v1IdStr = img1v1IdStr;
  }

  int get img1v1Id => _img1v1Id;
  set img1v1Id(int img1v1Id) => _img1v1Id = img1v1Id;
  int get topicPerson => _topicPerson;
  set topicPerson(int topicPerson) => _topicPerson = topicPerson;
  bool get followed => _followed;
  set followed(bool followed) => _followed = followed;

  int get picId => _picId;
  set picId(int picId) => _picId = picId;
  int get albumSize => _albumSize;
  set albumSize(int albumSize) => _albumSize = albumSize;
  String get briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  int get musicSize => _musicSize;
  set musicSize(int musicSize) => _musicSize = musicSize;
  String get img1v1Url => _img1v1Url;
  set img1v1Url(String img1v1Url) => _img1v1Url = img1v1Url;
  String get trans => _trans;
  set trans(String trans) => _trans = trans;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  List<String> get transNames => _transNames;
  set transNames(List<String> transNames) => _transNames = transNames;
  String get img1v1IdStr => _img1v1IdStr;
  set img1v1IdStr(String img1v1IdStr) => _img1v1IdStr = img1v1IdStr;

  Artist.fromJson(Map<String, dynamic> json) {
    _img1v1Id = json['img1v1Id'];
    _topicPerson = json['topicPerson'];
    _followed = json['followed'];

    _picId = json['picId'];
    _albumSize = json['albumSize'];
    _briefDesc = json['briefDesc'];
    _musicSize = json['musicSize'];
    _img1v1Url = json['img1v1Url'];
    _trans = json['trans'];
    _picUrl = json['picUrl'];
    _name = json['name'];
    _id = json['id'];
    _transNames = json['transNames']?.cast<String>();
    _img1v1IdStr = json['img1v1Id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img1v1Id'] = this._img1v1Id;
    data['topicPerson'] = this._topicPerson;
    data['followed'] = this._followed;

    data['picId'] = this._picId;
    data['albumSize'] = this._albumSize;
    data['briefDesc'] = this._briefDesc;
    data['musicSize'] = this._musicSize;
    data['img1v1Url'] = this._img1v1Url;
    data['trans'] = this._trans;
    data['picUrl'] = this._picUrl;
    data['name'] = this._name;
    data['id'] = this._id;
    data['transNames'] = this._transNames;
    data['img1v1Id_str'] = this._img1v1IdStr;
    return data;
  }
}
