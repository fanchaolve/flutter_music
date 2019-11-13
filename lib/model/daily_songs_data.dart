class DailySongsData {
  int _code;
  List<Recommend> _recommend;
  Data _data;

  DailySongsData({int code, List<Recommend> recommend, Data data}) {
    this._code = code;
    this._recommend = recommend;
    this._data = data;
  }

  int get code => _code;
  set code(int code) => _code = code;
  List<Recommend> get recommend => _recommend;
  set recommend(List<Recommend> recommend) => _recommend = recommend;
  Data get data => _data;
  set data(Data data) => _data = data;

  DailySongsData.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    if (json['recommend'] != null) {
      _recommend = new List<Recommend>();
      json['recommend'].forEach((v) {
        _recommend.add(new Recommend.fromJson(v));
      });
    }
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    if (this._recommend != null) {
      data['recommend'] = this._recommend.map((v) => v.toJson()).toList();
    }
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Recommend {
  String _name;
  int _id;
  int _position;

  int _status;
  int _fee;
  int _copyrightId;
  String _disc;
  int _no;
  List<Artists> _artists;
  Album _album;
  bool _starred;
  int _popularity;
  int _score;
  int _starredNum;
  int _duration;
  int _playedNum;
  int _dayPlays;
  int _hearTime;
  String _ringtone;
  Null _crbt;
  Null _audition;
  String _copyFrom;
  String _commentThreadId;
  Null _rtUrl;
  int _ftype;

  int _copyright;
  Null _transName;
  Null _sign;
  int _mark;
  HMusic _hMusic;
  HMusic _mMusic;
  HMusic _lMusic;
  HMusic _bMusic;
  int _mvid;
  int _rtype;
  Null _rurl;
  Null _mp3Url;
  String _reason;
  Privilege _privilege;
  String _alg;

  Recommend(
      {String name,
        int id,
        int position,
        List<Null> alias,
        int status,
        int fee,
        int copyrightId,
        String disc,
        int no,
        List<Artists> artists,
        Album album,
        bool starred,
        int popularity,
        int score,
        int starredNum,
        int duration,
        int playedNum,
        int dayPlays,
        int hearTime,
        String ringtone,
        Null crbt,
        Null audition,
        String copyFrom,
        String commentThreadId,
        Null rtUrl,
        int ftype,
        List<Null> rtUrls,
        int copyright,
        Null transName,
        Null sign,
        int mark,
        HMusic hMusic,
        HMusic mMusic,
        HMusic lMusic,
        HMusic bMusic,
        int mvid,
        int rtype,
        Null rurl,
        Null mp3Url,
        String reason,
        Privilege privilege,
        String alg}) {
    this._name = name;
    this._id = id;
    this._position = position;

    this._status = status;
    this._fee = fee;
    this._copyrightId = copyrightId;
    this._disc = disc;
    this._no = no;
    this._artists = artists;
    this._album = album;
    this._starred = starred;
    this._popularity = popularity;
    this._score = score;
    this._starredNum = starredNum;
    this._duration = duration;
    this._playedNum = playedNum;
    this._dayPlays = dayPlays;
    this._hearTime = hearTime;
    this._ringtone = ringtone;
    this._crbt = crbt;
    this._audition = audition;
    this._copyFrom = copyFrom;
    this._commentThreadId = commentThreadId;
    this._rtUrl = rtUrl;
    this._ftype = ftype;

    this._copyright = copyright;
    this._transName = transName;
    this._sign = sign;
    this._mark = mark;
    this._hMusic = hMusic;
    this._mMusic = mMusic;
    this._lMusic = lMusic;
    this._bMusic = bMusic;
    this._mvid = mvid;
    this._rtype = rtype;
    this._rurl = rurl;
    this._mp3Url = mp3Url;
    this._reason = reason;
    this._privilege = privilege;
    this._alg = alg;
  }

  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  int get position => _position;
  set position(int position) => _position = position;

  int get status => _status;
  set status(int status) => _status = status;
  int get fee => _fee;
  set fee(int fee) => _fee = fee;
  int get copyrightId => _copyrightId;
  set copyrightId(int copyrightId) => _copyrightId = copyrightId;
  String get disc => _disc;
  set disc(String disc) => _disc = disc;
  int get no => _no;
  set no(int no) => _no = no;
  List<Artists> get artists => _artists;
  set artists(List<Artists> artists) => _artists = artists;
  Album get album => _album;
  set album(Album album) => _album = album;
  bool get starred => _starred;
  set starred(bool starred) => _starred = starred;
  int get popularity => _popularity;
  set popularity(int popularity) => _popularity = popularity;
  int get score => _score;
  set score(int score) => _score = score;
  int get starredNum => _starredNum;
  set starredNum(int starredNum) => _starredNum = starredNum;
  int get duration => _duration;
  set duration(int duration) => _duration = duration;
  int get playedNum => _playedNum;
  set playedNum(int playedNum) => _playedNum = playedNum;
  int get dayPlays => _dayPlays;
  set dayPlays(int dayPlays) => _dayPlays = dayPlays;
  int get hearTime => _hearTime;
  set hearTime(int hearTime) => _hearTime = hearTime;
  String get ringtone => _ringtone;
  set ringtone(String ringtone) => _ringtone = ringtone;
  Null get crbt => _crbt;
  set crbt(Null crbt) => _crbt = crbt;
  Null get audition => _audition;
  set audition(Null audition) => _audition = audition;
  String get copyFrom => _copyFrom;
  set copyFrom(String copyFrom) => _copyFrom = copyFrom;
  String get commentThreadId => _commentThreadId;
  set commentThreadId(String commentThreadId) =>
      _commentThreadId = commentThreadId;
  Null get rtUrl => _rtUrl;
  set rtUrl(Null rtUrl) => _rtUrl = rtUrl;
  int get ftype => _ftype;
  set ftype(int ftype) => _ftype = ftype;

  int get copyright => _copyright;
  set copyright(int copyright) => _copyright = copyright;
  Null get transName => _transName;
  set transName(Null transName) => _transName = transName;
  Null get sign => _sign;
  set sign(Null sign) => _sign = sign;
  int get mark => _mark;
  set mark(int mark) => _mark = mark;
  HMusic get hMusic => _hMusic;
  set hMusic(HMusic hMusic) => _hMusic = hMusic;
  HMusic get mMusic => _mMusic;
  set mMusic(HMusic mMusic) => _mMusic = mMusic;
  HMusic get lMusic => _lMusic;
  set lMusic(HMusic lMusic) => _lMusic = lMusic;
  HMusic get bMusic => _bMusic;
  set bMusic(HMusic bMusic) => _bMusic = bMusic;
  int get mvid => _mvid;
  set mvid(int mvid) => _mvid = mvid;
  int get rtype => _rtype;
  set rtype(int rtype) => _rtype = rtype;
  Null get rurl => _rurl;
  set rurl(Null rurl) => _rurl = rurl;
  Null get mp3Url => _mp3Url;
  set mp3Url(Null mp3Url) => _mp3Url = mp3Url;
  String get reason => _reason;
  set reason(String reason) => _reason = reason;
  Privilege get privilege => _privilege;
  set privilege(Privilege privilege) => _privilege = privilege;
  String get alg => _alg;
  set alg(String alg) => _alg = alg;

  Recommend.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _position = json['position'];

    _status = json['status'];
    _fee = json['fee'];
    _copyrightId = json['copyrightId'];
    _disc = json['disc'];
    _no = json['no'];
    if (json['artists'] != null) {
      _artists = new List<Artists>();
      json['artists'].forEach((v) {
        _artists.add(new Artists.fromJson(v));
      });
    }
    _album = json['album'] != null ? new Album.fromJson(json['album']) : null;
    _starred = json['starred'];
    _popularity = json['popularity'];
    _score = json['score'];
    _starredNum = json['starredNum'];
    _duration = json['duration'];
    _playedNum = json['playedNum'];
    _dayPlays = json['dayPlays'];
    _hearTime = json['hearTime'];
    _ringtone = json['ringtone'];
    _crbt = json['crbt'];
    _audition = json['audition'];
    _copyFrom = json['copyFrom'];
    _commentThreadId = json['commentThreadId'];
    _rtUrl = json['rtUrl'];
    _ftype = json['ftype'];

    _copyright = json['copyright'];
    _transName = json['transName'];
    _sign = json['sign'];
    _mark = json['mark'];
    _hMusic =
    json['hMusic'] != null ? new HMusic.fromJson(json['hMusic']) : null;
    _mMusic =
    json['mMusic'] != null ? new HMusic.fromJson(json['mMusic']) : null;
    _lMusic =
    json['lMusic'] != null ? new HMusic.fromJson(json['lMusic']) : null;
    _bMusic =
    json['bMusic'] != null ? new HMusic.fromJson(json['bMusic']) : null;
    _mvid = json['mvid'];
    _rtype = json['rtype'];
    _rurl = json['rurl'];
    _mp3Url = json['mp3Url'];
    _reason = json['reason'];
    _privilege = json['privilege'] != null
        ? new Privilege.fromJson(json['privilege'])
        : null;
    _alg = json['alg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['position'] = this._position;

    data['status'] = this._status;
    data['fee'] = this._fee;
    data['copyrightId'] = this._copyrightId;
    data['disc'] = this._disc;
    data['no'] = this._no;
    if (this._artists != null) {
      data['artists'] = this._artists.map((v) => v.toJson()).toList();
    }
    if (this._album != null) {
      data['album'] = this._album.toJson();
    }
    data['starred'] = this._starred;
    data['popularity'] = this._popularity;
    data['score'] = this._score;
    data['starredNum'] = this._starredNum;
    data['duration'] = this._duration;
    data['playedNum'] = this._playedNum;
    data['dayPlays'] = this._dayPlays;
    data['hearTime'] = this._hearTime;
    data['ringtone'] = this._ringtone;
    data['crbt'] = this._crbt;
    data['audition'] = this._audition;
    data['copyFrom'] = this._copyFrom;
    data['commentThreadId'] = this._commentThreadId;
    data['rtUrl'] = this._rtUrl;
    data['ftype'] = this._ftype;

    data['copyright'] = this._copyright;
    data['transName'] = this._transName;
    data['sign'] = this._sign;
    data['mark'] = this._mark;
    if (this._hMusic != null) {
      data['hMusic'] = this._hMusic.toJson();
    }
    if (this._mMusic != null) {
      data['mMusic'] = this._mMusic.toJson();
    }
    if (this._lMusic != null) {
      data['lMusic'] = this._lMusic.toJson();
    }
    if (this._bMusic != null) {
      data['bMusic'] = this._bMusic.toJson();
    }
    data['mvid'] = this._mvid;
    data['rtype'] = this._rtype;
    data['rurl'] = this._rurl;
    data['mp3Url'] = this._mp3Url;
    data['reason'] = this._reason;
    if (this._privilege != null) {
      data['privilege'] = this._privilege.toJson();
    }
    data['alg'] = this._alg;
    return data;
  }
}

class Artists {
  String _name;
  int _id;
  int _picId;
  int _img1v1Id;
  String _briefDesc;
  String _picUrl;
  String _img1v1Url;
  int _albumSize;
  String _trans;
  int _musicSize;
  int _topicPerson;

  Artists(
      {String name,
        int id,
        int picId,
        int img1v1Id,
        String briefDesc,
        String picUrl,
        String img1v1Url,
        int albumSize,
        String trans,
        int musicSize,
        int topicPerson}) {
    this._name = name;
    this._id = id;
    this._picId = picId;
    this._img1v1Id = img1v1Id;
    this._briefDesc = briefDesc;
    this._picUrl = picUrl;
    this._img1v1Url = img1v1Url;
    this._albumSize = albumSize;
    this._trans = trans;
    this._musicSize = musicSize;
    this._topicPerson = topicPerson;
  }

  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  int get picId => _picId;
  set picId(int picId) => _picId = picId;
  int get img1v1Id => _img1v1Id;
  set img1v1Id(int img1v1Id) => _img1v1Id = img1v1Id;
  String get briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get img1v1Url => _img1v1Url;
  set img1v1Url(String img1v1Url) => _img1v1Url = img1v1Url;
  int get albumSize => _albumSize;
  set albumSize(int albumSize) => _albumSize = albumSize;
  String get trans => _trans;
  set trans(String trans) => _trans = trans;
  int get musicSize => _musicSize;
  set musicSize(int musicSize) => _musicSize = musicSize;
  int get topicPerson => _topicPerson;
  set topicPerson(int topicPerson) => _topicPerson = topicPerson;

  Artists.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _picId = json['picId'];
    _img1v1Id = json['img1v1Id'];
    _briefDesc = json['briefDesc'];
    _picUrl = json['picUrl'];
    _img1v1Url = json['img1v1Url'];
    _albumSize = json['albumSize'];

    _trans = json['trans'];
    _musicSize = json['musicSize'];
    _topicPerson = json['topicPerson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['picId'] = this._picId;
    data['img1v1Id'] = this._img1v1Id;
    data['briefDesc'] = this._briefDesc;
    data['picUrl'] = this._picUrl;
    data['img1v1Url'] = this._img1v1Url;
    data['albumSize'] = this._albumSize;

    data['trans'] = this._trans;
    data['musicSize'] = this._musicSize;
    data['topicPerson'] = this._topicPerson;
    return data;
  }
}

class Album {
  String _name;
  int _id;
  String _type;
  int _size;
  int _picId;
  String _blurPicUrl;
  int _companyId;
  int _pic;
  String _picUrl;
  int _publishTime;
  String _description;
  String _tags;

  String _briefDesc;
  Artists _artist;

  int _status;
  int _copyrightId;
  String _commentThreadId;
  List<Artists> _artists;
  String _subType;
  Null _transName;
  int _mark;
  String _picIdStr;

  Album(
      {String name,
        int id,
        String type,
        int size,
        int picId,
        String blurPicUrl,
        int companyId,
        int pic,
        String picUrl,
        int publishTime,
        String description,
        String tags,
        Null company,
        String briefDesc,
        Artists artist,
        List<Null> songs,
        List<Null> alias,
        int status,
        int copyrightId,
        String commentThreadId,
        List<Artists> artists,
        String subType,
        Null transName,
        int mark,
        String picIdStr}) {
    this._name = name;
    this._id = id;
    this._type = type;
    this._size = size;
    this._picId = picId;
    this._blurPicUrl = blurPicUrl;
    this._companyId = companyId;
    this._pic = pic;
    this._picUrl = picUrl;
    this._publishTime = publishTime;
    this._description = description;
    this._tags = tags;

    this._briefDesc = briefDesc;
    this._artist = artist;

    this._status = status;
    this._copyrightId = copyrightId;
    this._commentThreadId = commentThreadId;
    this._artists = artists;
    this._subType = subType;
    this._transName = transName;
    this._mark = mark;
    this._picIdStr = picIdStr;
  }

  String get name => _name;
  set name(String name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  String get type => _type;
  set type(String type) => _type = type;
  int get size => _size;
  set size(int size) => _size = size;
  int get picId => _picId;
  set picId(int picId) => _picId = picId;
  String get blurPicUrl => _blurPicUrl;
  set blurPicUrl(String blurPicUrl) => _blurPicUrl = blurPicUrl;
  int get companyId => _companyId;
  set companyId(int companyId) => _companyId = companyId;
  int get pic => _pic;
  set pic(int pic) => _pic = pic;
  String get picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  int get publishTime => _publishTime;
  set publishTime(int publishTime) => _publishTime = publishTime;
  String get description => _description;
  set description(String description) => _description = description;
  String get tags => _tags;
  set tags(String tags) => _tags = tags;

  String get briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  Artists get artist => _artist;
  set artist(Artists artist) => _artist = artist;

  int get status => _status;
  set status(int status) => _status = status;
  int get copyrightId => _copyrightId;
  set copyrightId(int copyrightId) => _copyrightId = copyrightId;
  String get commentThreadId => _commentThreadId;
  set commentThreadId(String commentThreadId) =>
      _commentThreadId = commentThreadId;
  List<Artists> get artists => _artists;
  set artists(List<Artists> artists) => _artists = artists;
  String get subType => _subType;
  set subType(String subType) => _subType = subType;
  Null get transName => _transName;
  set transName(Null transName) => _transName = transName;
  int get mark => _mark;
  set mark(int mark) => _mark = mark;
  String get picIdStr => _picIdStr;
  set picIdStr(String picIdStr) => _picIdStr = picIdStr;

  Album.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _type = json['type'];
    _size = json['size'];
    _picId = json['picId'];
    _blurPicUrl = json['blurPicUrl'];
    _companyId = json['companyId'];
    _pic = json['pic'];
    _picUrl = json['picUrl'];
    _publishTime = json['publishTime'];
    _description = json['description'];
    _tags = json['tags'];

    _briefDesc = json['briefDesc'];
    _artist =

    _status = json['status'];
    _copyrightId = json['copyrightId'];
    _commentThreadId = json['commentThreadId'];
    if (json['artists'] != null) {
      _artists = new List<Artists>();
      json['artists'].forEach((v) {
        _artists.add(new Artists.fromJson(v));
      });
    }
    _subType = json['subType'];
    _transName = json['transName'];
    _mark = json['mark'];
    _picIdStr = json['picId_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['type'] = this._type;
    data['size'] = this._size;
    data['picId'] = this._picId;
    data['blurPicUrl'] = this._blurPicUrl;
    data['companyId'] = this._companyId;
    data['pic'] = this._pic;
    data['picUrl'] = this._picUrl;
    data['publishTime'] = this._publishTime;
    data['description'] = this._description;
    data['tags'] = this._tags;

    data['briefDesc'] = this._briefDesc;
    if (this._artist != null) {
      data['artist'] = this._artist.toJson();
    }

    data['status'] = this._status;
    data['copyrightId'] = this._copyrightId;
    data['commentThreadId'] = this._commentThreadId;
    if (this._artists != null) {
      data['artists'] = this._artists.map((v) => v.toJson()).toList();
    }
    data['subType'] = this._subType;
    data['transName'] = this._transName;
    data['mark'] = this._mark;
    data['picId_str'] = this._picIdStr;
    return data;
  }
}

class HMusic {
  Null _name;
  int _id;
  int _size;
  String _extension;
  int _sr;
  int _dfsId;
  int _bitrate;
  int _playTime;
  int _volumeDelta;

  HMusic(
      {Null name,
        int id,
        int size,
        String extension,
        int sr,
        int dfsId,
        int bitrate,
        int playTime,
        int volumeDelta}) {
    this._name = name;
    this._id = id;
    this._size = size;
    this._extension = extension;
    this._sr = sr;
    this._dfsId = dfsId;
    this._bitrate = bitrate;
    this._playTime = playTime;
    this._volumeDelta = volumeDelta;
  }

  Null get name => _name;
  set name(Null name) => _name = name;
  int get id => _id;
  set id(int id) => _id = id;
  int get size => _size;
  set size(int size) => _size = size;
  String get extension => _extension;
  set extension(String extension) => _extension = extension;
  int get sr => _sr;
  set sr(int sr) => _sr = sr;
  int get dfsId => _dfsId;
  set dfsId(int dfsId) => _dfsId = dfsId;
  int get bitrate => _bitrate;
  set bitrate(int bitrate) => _bitrate = bitrate;
  int get playTime => _playTime;
  set playTime(int playTime) => _playTime = playTime;
  int get volumeDelta => _volumeDelta;
  set volumeDelta(int volumeDelta) => _volumeDelta = volumeDelta;

  HMusic.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _size = json['size'];
    _extension = json['extension'];
    _sr = json['sr'];
    _dfsId = json['dfsId'];
    _bitrate = json['bitrate'];
    _playTime = json['playTime'];
    _volumeDelta = json['volumeDelta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['size'] = this._size;
    data['extension'] = this._extension;
    data['sr'] = this._sr;
    data['dfsId'] = this._dfsId;
    data['bitrate'] = this._bitrate;
    data['playTime'] = this._playTime;
    data['volumeDelta'] = this._volumeDelta;
    return data;
  }
}

class Privilege {
  int _id;
  int _fee;
  int _payed;
  int _st;
  int _pl;
  int _dl;
  int _sp;
  int _cp;
  int _subp;
  bool _cs;
  int _maxbr;
  int _fl;
  bool _toast;
  int _flag;
  bool _preSell;

  Privilege(
      {int id,
        int fee,
        int payed,
        int st,
        int pl,
        int dl,
        int sp,
        int cp,
        int subp,
        bool cs,
        int maxbr,
        int fl,
        bool toast,
        int flag,
        bool preSell}) {
    this._id = id;
    this._fee = fee;
    this._payed = payed;
    this._st = st;
    this._pl = pl;
    this._dl = dl;
    this._sp = sp;
    this._cp = cp;
    this._subp = subp;
    this._cs = cs;
    this._maxbr = maxbr;
    this._fl = fl;
    this._toast = toast;
    this._flag = flag;
    this._preSell = preSell;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get fee => _fee;
  set fee(int fee) => _fee = fee;
  int get payed => _payed;
  set payed(int payed) => _payed = payed;
  int get st => _st;
  set st(int st) => _st = st;
  int get pl => _pl;
  set pl(int pl) => _pl = pl;
  int get dl => _dl;
  set dl(int dl) => _dl = dl;
  int get sp => _sp;
  set sp(int sp) => _sp = sp;
  int get cp => _cp;
  set cp(int cp) => _cp = cp;
  int get subp => _subp;
  set subp(int subp) => _subp = subp;
  bool get cs => _cs;
  set cs(bool cs) => _cs = cs;
  int get maxbr => _maxbr;
  set maxbr(int maxbr) => _maxbr = maxbr;
  int get fl => _fl;
  set fl(int fl) => _fl = fl;
  bool get toast => _toast;
  set toast(bool toast) => _toast = toast;
  int get flag => _flag;
  set flag(int flag) => _flag = flag;
  bool get preSell => _preSell;
  set preSell(bool preSell) => _preSell = preSell;

  Privilege.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fee = json['fee'];
    _payed = json['payed'];
    _st = json['st'];
    _pl = json['pl'];
    _dl = json['dl'];
    _sp = json['sp'];
    _cp = json['cp'];
    _subp = json['subp'];
    _cs = json['cs'];
    _maxbr = json['maxbr'];
    _fl = json['fl'];
    _toast = json['toast'];
    _flag = json['flag'];
    _preSell = json['preSell'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['fee'] = this._fee;
    data['payed'] = this._payed;
    data['st'] = this._st;
    data['pl'] = this._pl;
    data['dl'] = this._dl;
    data['sp'] = this._sp;
    data['cp'] = this._cp;
    data['subp'] = this._subp;
    data['cs'] = this._cs;
    data['maxbr'] = this._maxbr;
    data['fl'] = this._fl;
    data['toast'] = this._toast;
    data['flag'] = this._flag;
    data['preSell'] = this._preSell;
    return data;
  }
}



class Data {
  List<Recommend> _dailySongs;

  Data({List<Recommend> dailySongs}) {
    this._dailySongs = dailySongs;
  }

  List<Recommend> get dailySongs => _dailySongs;
  set dailySongs(List<Recommend> dailySongs) => _dailySongs = dailySongs;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['dailySongs'] != null) {
      _dailySongs = new List<Recommend>();
      json['dailySongs'].forEach((v) {
        _dailySongs.add(new Recommend.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._dailySongs != null) {
      data['dailySongs'] = this._dailySongs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
