

class RecommendData {
  int _code;
  bool _featureFirst;
  bool _haveRcmdSongs;
  List<Recommend> _recommend;

  RecommendData(
      {int code,
        bool featureFirst,
        bool haveRcmdSongs,
        List<Recommend> recommend}) {
    this._code = code;
    this._featureFirst = featureFirst;
    this._haveRcmdSongs = haveRcmdSongs;
    this._recommend = recommend;
  }

  int get code => _code;
  set code(int code) => _code = code;
  bool get featureFirst => _featureFirst;
  set featureFirst(bool featureFirst) => _featureFirst = featureFirst;
  bool get haveRcmdSongs => _haveRcmdSongs;
  set haveRcmdSongs(bool haveRcmdSongs) => _haveRcmdSongs = haveRcmdSongs;
  List<Recommend> get recommend => _recommend;
  set recommend(List<Recommend> recommend) => _recommend = recommend;

  RecommendData.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _featureFirst = json['featureFirst'];
    _haveRcmdSongs = json['haveRcmdSongs'];
    if (json['recommend'] != null) {
      _recommend = new List<Recommend>();
      json['recommend'].forEach((v) {
        _recommend.add(new Recommend.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['featureFirst'] = this._featureFirst;
    data['haveRcmdSongs'] = this._haveRcmdSongs;
    if (this._recommend != null) {
      data['recommend'] = this._recommend.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Recommend {
  int _id;
  int _type;
  String _name;
  String _copywriter;
  String _picUrl;
  int _playcount;
  int _createTime;
  Creator _creator;
  int _trackCount;
  int _userId;
  String _alg;

  Recommend(
      {int id,
        int type,
        String name,
        String copywriter,
        String picUrl,
        int playcount,
        int createTime,
        Creator creator,
        int trackCount,
        int userId,
        String alg}) {
    this._id = id;
    this._type = type;
    this._name = name;
    this._copywriter = copywriter;
    this._picUrl = picUrl;
    this._playcount = playcount;
    this._createTime = createTime;
    this._creator = creator;
    this._trackCount = trackCount;
    this._userId = userId;
    this._alg = alg;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get type => _type;
  set type(int type) => _type = type;
  String get name => _name;
  set name(String name) => _name = name;
  String get copywriter => _copywriter;
  set copywriter(String copywriter) => _copywriter = copywriter;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  int get playcount => _playcount;
  set playcount(int playcount) => _playcount = playcount;
  int get createTime => _createTime;
  set createTime(int createTime) => _createTime = createTime;
  Creator get creator => _creator;
  set creator(Creator creator) => _creator = creator;
  int get trackCount => _trackCount;
  set trackCount(int trackCount) => _trackCount = trackCount;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  String get alg => _alg;
  set alg(String alg) => _alg = alg;

  Recommend.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _type = json['type'];
    _name = json['name'];
    _copywriter = json['copywriter'];
    _picUrl = json['picUrl'];
    _playcount = json['playcount'];
    _createTime = json['createTime'];
    _creator =
    json['creator'] != null ? new Creator.fromJson(json['creator']) : null;
    _trackCount = json['trackCount'];
    _userId = json['userId'];
    _alg = json['alg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['type'] = this._type;
    data['name'] = this._name;
    data['copywriter'] = this._copywriter;
    data['picUrl'] = this._picUrl;
    data['playcount'] = this._playcount;
    data['createTime'] = this._createTime;
    if (this._creator != null) {
      data['creator'] = this._creator.toJson();
    }
    data['trackCount'] = this._trackCount;
    data['userId'] = this._userId;
    data['alg'] = this._alg;
    return data;
  }
}

class Creator {
  Null _remarkName;
  bool _mutual;
  int _accountStatus;
  int _userId;
  int _vipType;
  int _province;
  String _avatarUrl;
  int _authStatus;
  int _userType;
  String _nickname;
  int _gender;
  int _birthday;
  int _city;
  int _backgroundImgId;
  bool _defaultAvatar;
  List<String> _expertTags;
  String _detailDescription;
  int _avatarImgId;
  int _djStatus;
  String _backgroundUrl;
  bool _followed;
  String _description;
  String _avatarImgIdStr;
  String _backgroundImgIdStr;
  String _signature;
  int _authority;

  Creator(
      {Null remarkName,
        bool mutual,
        int accountStatus,
        int userId,
        int vipType,
        int province,
        String avatarUrl,
        int authStatus,
        int userType,
        String nickname,
        int gender,
        int birthday,
        int city,
        int backgroundImgId,
        bool defaultAvatar,
        List<String> expertTags,
        String detailDescription,
        int avatarImgId,
        int djStatus,
        String backgroundUrl,
        bool followed,
        String description,
        String avatarImgIdStr,
        String backgroundImgIdStr,
        String signature,
        int authority}) {
    this._remarkName = remarkName;
    this._mutual = mutual;
    this._accountStatus = accountStatus;
    this._userId = userId;
    this._vipType = vipType;
    this._province = province;
    this._avatarUrl = avatarUrl;
    this._authStatus = authStatus;
    this._userType = userType;
    this._nickname = nickname;
    this._gender = gender;
    this._birthday = birthday;
    this._city = city;
    this._backgroundImgId = backgroundImgId;
    this._defaultAvatar = defaultAvatar;
    this._expertTags = expertTags;
    this._detailDescription = detailDescription;
    this._avatarImgId = avatarImgId;
    this._djStatus = djStatus;
    this._backgroundUrl = backgroundUrl;
    this._followed = followed;
    this._description = description;
    this._avatarImgIdStr = avatarImgIdStr;
    this._backgroundImgIdStr = backgroundImgIdStr;
    this._signature = signature;
    this._authority = authority;
  }

  Null get remarkName => _remarkName;
  set remarkName(Null remarkName) => _remarkName = remarkName;
  bool get mutual => _mutual;
  set mutual(bool mutual) => _mutual = mutual;
  int get accountStatus => _accountStatus;
  set accountStatus(int accountStatus) => _accountStatus = accountStatus;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  int get vipType => _vipType;
  set vipType(int vipType) => _vipType = vipType;
  int get province => _province;
  set province(int province) => _province = province;
  String get avatarUrl => _avatarUrl;
  set avatarUrl(String avatarUrl) => _avatarUrl = avatarUrl;
  int get authStatus => _authStatus;
  set authStatus(int authStatus) => _authStatus = authStatus;
  int get userType => _userType;
  set userType(int userType) => _userType = userType;
  String get nickname => _nickname;
  set nickname(String nickname) => _nickname = nickname;
  int get gender => _gender;
  set gender(int gender) => _gender = gender;
  int get birthday => _birthday;
  set birthday(int birthday) => _birthday = birthday;
  int get city => _city;
  set city(int city) => _city = city;
  int get backgroundImgId => _backgroundImgId;
  set backgroundImgId(int backgroundImgId) =>
      _backgroundImgId = backgroundImgId;
  bool get defaultAvatar => _defaultAvatar;
  set defaultAvatar(bool defaultAvatar) => _defaultAvatar = defaultAvatar;
  List<String> get expertTags => _expertTags;
  set expertTags(List<String> expertTags) => _expertTags = expertTags;
  String get detailDescription => _detailDescription;
  set detailDescription(String detailDescription) =>
      _detailDescription = detailDescription;
  int get avatarImgId => _avatarImgId;
  set avatarImgId(int avatarImgId) => _avatarImgId = avatarImgId;
  int get djStatus => _djStatus;
  set djStatus(int djStatus) => _djStatus = djStatus;
  String get backgroundUrl => _backgroundUrl;
  set backgroundUrl(String backgroundUrl) => _backgroundUrl = backgroundUrl;
  bool get followed => _followed;
  set followed(bool followed) => _followed = followed;
  String get description => _description;
  set description(String description) => _description = description;
  String get avatarImgIdStr => _avatarImgIdStr;
  set avatarImgIdStr(String avatarImgIdStr) => _avatarImgIdStr = avatarImgIdStr;
  String get backgroundImgIdStr => _backgroundImgIdStr;
  set backgroundImgIdStr(String backgroundImgIdStr) =>
      _backgroundImgIdStr = backgroundImgIdStr;
  String get signature => _signature;
  set signature(String signature) => _signature = signature;
  int get authority => _authority;
  set authority(int authority) => _authority = authority;

  Creator.fromJson(Map<String, dynamic> json) {
    _remarkName = json['remarkName'];
    _mutual = json['mutual'];
    _accountStatus = json['accountStatus'];
    _userId = json['userId'];
    _vipType = json['vipType'];
    _province = json['province'];
    _avatarUrl = json['avatarUrl'];
    _authStatus = json['authStatus'];
    _userType = json['userType'];
    _nickname = json['nickname'];
    _gender = json['gender'];
    _birthday = json['birthday'];
    _city = json['city'];
    _backgroundImgId = json['backgroundImgId'];
    _defaultAvatar = json['defaultAvatar'];
    _expertTags = json['expertTags']?.cast<String>();
    _detailDescription = json['detailDescription'];
    _avatarImgId = json['avatarImgId'];
    _djStatus = json['djStatus'];
    _backgroundUrl = json['backgroundUrl'];
    _followed = json['followed'];
    _description = json['description'];
    _avatarImgIdStr = json['avatarImgIdStr'];
    _backgroundImgIdStr = json['backgroundImgIdStr'];
    _signature = json['signature'];
    _authority = json['authority'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['remarkName'] = this._remarkName;
    data['mutual'] = this._mutual;
    data['accountStatus'] = this._accountStatus;
    data['userId'] = this._userId;
    data['vipType'] = this._vipType;
    data['province'] = this._province;
    data['avatarUrl'] = this._avatarUrl;
    data['authStatus'] = this._authStatus;
    data['userType'] = this._userType;
    data['nickname'] = this._nickname;
    data['gender'] = this._gender;
    data['birthday'] = this._birthday;
    data['city'] = this._city;
    data['backgroundImgId'] = this._backgroundImgId;
    data['defaultAvatar'] = this._defaultAvatar;
    data['expertTags'] = this._expertTags;
    data['detailDescription'] = this._detailDescription;
    data['avatarImgId'] = this._avatarImgId;
    data['djStatus'] = this._djStatus;
    data['backgroundUrl'] = this._backgroundUrl;
    data['followed'] = this._followed;
    data['description'] = this._description;
    data['avatarImgIdStr'] = this._avatarImgIdStr;
    data['backgroundImgIdStr'] = this._backgroundImgIdStr;
    data['signature'] = this._signature;
    data['authority'] = this._authority;
    return data;
  }
}
